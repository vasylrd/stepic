# coding: utf-8


def application(env, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    result = '\n'.join(env['QUERY_STRING'].split('&'))
    return [result]


def test(status, ls):
    pass


dc = {'QUERY_STRING': 'a=1&b=2&c=3'}


print(application(dc, test))