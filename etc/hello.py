# coding: utf-8


def application(env, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    result = '\n'.join(env['QUERY_STRING'].split('&'))
    return [result]
