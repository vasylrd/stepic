# coding: utf-8


def app(env, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    return ['\n'.join(env['QUERY_STRING'].split('&'))]

if __name__ == '__main__':
    def test(status, ls):
        pass

    dc = {'QUERY_STRING': 'a=1&b=2&c=3'}
    print(app(dc, test))
