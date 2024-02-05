from plugins import Plugin
from plugins import Remove
import os
import katanaerrors


class File(Plugin):

    @classmethod
    def get_aliases(cls):
        return ["file"]

    def any(self, params):
        self._validate_params(params, ['path', 'state'], 'file')

        state = params.get('state')
        if state not in ['directory', 'absent']:
            raise katanaerrors.UnrecognizedParamValue('state', state, 'file', 'directory')

        if state == 'directory':
            try:
                if params.get('mode') is None:
                    os.makedirs(params.get('path'))
                    return True, None
                else:
                    os.makedirs(params.get('path'), mode=params.get('mode'))
                    return True, None
            except FileExistsError as err:
                return False, 'Specified path exists.'
        elif state == 'absent':
            remove = Remove()
            remove_params = {'path': params.get('path')}
            return remove.any(remove_params)
