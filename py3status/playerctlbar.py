# py3status module for playerctl

import subprocess

def run(*cmdlist):
    return subprocess.run(
            cmdlist,
            stdout=subprocess.PIPE,
            stderr=subprocess.DEVNULL).stdout.decode()

def player_args(players):
    if not players:
        return 'playerctl',
    else:
        return 'playerctl', '-p', players

def get_status(players):
    status = run(*player_args(players), 'status')[:-1]
    if status in ('Playing', 'Paused'):
        return status
    return ''

def get_info(players, fmt):
    args = 'metadata', '--format', f'{fmt}'
    return run(*player_args(players), *args).strip()

class Py3status:
    players = ''
    format = '{{ artist }} / {{ title }}'

    def spotbar(self):
        text_format = "[[ {info} ]]|[ {status} ]"

        params = {'status': get_status(self.players)}

        if params['status'] == 'Playing':
            params['info'] = get_info(self.players, self.format)
            if params['info'] == '/ -':
                params['info'] = None

        return {
            'full_text': self.py3.safe_format(text_format, params),
            'cached_until': self.py3.time_in(seconds=1)
        }

    def on_click(self, event):
        if event['button'] == 1:
            run('playerctl', 'play-pause')
        if event['button'] == 2:
            run('playerctl', 'stop')
        if event['button'] == 3:
            run('playerctl', 'next')


if __name__ == '__main__':
    from py3status.module_test import module_test
    module_test(Py3status)
