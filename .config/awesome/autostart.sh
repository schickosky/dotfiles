#!/bin/bash
# -- Start awesome
exec ck-launch-session awesome &
# -- Wait a second to make sure it's done starting
sleep 1 &
# -- Start up "Nice and Clean" conky setup
conky -c /home/skookah/awesome/themes/nice-and-clean-theme/conky/conkydate  &
conky -c /home/skookah/awesome/themes/nice-and-clean-theme/conky/conkyhr    &
conky -c /home/skookah/awesome/themes/nice-and-clean-theme/conky/conkymin   &
conky -c /home/skookah/awesome/themes/nice-and-clean-theme/conky/conkystats &


