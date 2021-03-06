node.default['freeswitch']['package']['packages'] = case node['platform']
when 'ubuntu', 'debian'
  %w(
    freeswitch-meta-vanilla
    freeswitch-mod-rayo
    freeswitch-lang
    freeswitch-music
    freeswitch-sounds
    freeswitch-mod-flite
    freeswitch-mod-pocketsphinx
    freeswitch-mod-http-cache
    freeswitch-conf-rayo
  )
when 'redhat', 'centos', 'fedora'
  %w(
    freeswitch
    freeswitch-event-rayo
    freeswitch-lang-en
    freeswitch-sounds-music
    freeswitch-sounds-en-us-callie
    freeswitch-asrtts-flite
    freeswitch-asrtts-pocketsphinx
    freeswitch-application-http-cache
    freeswitch-config-rayo
  )
end
node.default['freeswitch']['package']['config_template'] = 'rayo'
node.default['freeswitch']['source']['config_template'] = 'rayo'

node.default['freeswitch']['source']['modules'] = %w[
loggers/mod_console
loggers/mod_logfile
asr_tts/mod_flite
asr_tts/mod_pocketsphinx
applications/mod_cluechoo
applications/mod_commands
applications/mod_conference
applications/mod_dptools
applications/mod_db
applications/mod_fifo
applications/mod_hash
applications/mod_http_cache
applications/mod_expr
applications/mod_esf
applications/mod_fsv
applications/mod_spandsp
applications/mod_valet_parking
applications/mod_voicemail
codecs/mod_g723_1
codecs/mod_amr
codecs/mod_g729
codecs/mod_h26x
codecs/mod_speex
dialplans/mod_dialplan_xml
dialplans/mod_dialplan_asterisk
endpoints/mod_sofia
endpoints/mod_loopback
event_handlers/mod_event_socket
event_handlers/mod_cdr_csv
event_handlers/mod_rayo
formats/mod_native_file
formats/mod_sndfile
formats/mod_local_stream
formats/mod_tone_stream
formats/mod_ssml
languages/mod_lua
say/mod_say_en
]

node.default['freeswitch']['autoload_modules'] = %w[
  mod_console
  mod_logfile
  mod_cdr_csv
  mod_event_socket
  mod_rayo
  mod_sofia
  mod_loopback
  mod_commands
  mod_conference
  mod_dptools
  mod_expr
  mod_hash
  mod_esf
  mod_fsv
  mod_http_cache
  mod_dialplan_xml
  mod_spandsp
  mod_celt
  mod_speex
  mod_opus
  mod_ilbc
  mod_sndfile
  mod_native_file
  mod_shell_stream
  mod_shout
  mod_local_stream
  mod_tone_stream
  mod_ssml
  mod_lua
  mod_flite
  mod_pocketsphinx
  mod_say_en
]

node.default['freeswitch']['vars_template_cookbook'] = "freeswitch-rayo"
