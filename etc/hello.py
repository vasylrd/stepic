# coding: utf-8


def app(env, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    return iter(env['QUERY_STRING'].split('&'))