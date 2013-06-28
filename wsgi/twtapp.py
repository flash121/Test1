#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import uuid
import bottle
import pymongo

bottle.debug(True)

mongo_con = pymongo.Connection(os.environ['OPENSHIFT_MONGODB_DB_HOST'],
                               int(os.environ['OPENSHIFT_MONGODB_DB_PORT']))

mongo_db = mongo_con[os.environ['OPENSHIFT_APP_NAME']]
mongo_db.authenticate(os.environ['OPENSHIFT_MONGODB_DB_USERNAME'],
                      os.environ['OPENSHIFT_MONGODB_DB_PASSWORD'])


reserved_usernames = 'follow home signup login logout post static DEBUG'

bottle.TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_REPO_DIR'],
                                         'wsgi', 'views'))


@bottle.route('/')
def index():
        m={"MCMP_MBR_USI_ID" : "", "MCMP_SBS_ID" : "", "EL" : ""}
        return bottle.template('query',mynames = m)

@bottle.route('/DEBUG/cwd')
def dbg_cwd():
  return "<tt>cwd is %s</tt>" % os.getcwd()

@bottle.route('/DEBUG/env')
def dbg_env():
  env_list = ['%s: %s' % (key, value)
              for key, value in sorted(os.environ.items())]
  return "<pre>env is\n%s</pre>" % '\n'.join(env_list)

@bottle.route('/static/:filename')
def static_file(filename):
  bottle.send_file(filename,
                   root= os.path.join(os.environ['OPENSHIFT_REPO_DIR'],
                                      'wsgi', 'static'))

application = bottle.default_app()
