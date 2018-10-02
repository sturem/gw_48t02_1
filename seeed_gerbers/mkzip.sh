
# Missing these silk-screen overlay files:
#   48T02_battery_replacement.GBO
#   48T02_battery_replacement.GTO

[ ! -e 48T02_battery_replacement.DRL ] && \
  ln -s ../gerbers/48T02_battery_replacement.drl \
    48T02_battery_replacement.DRL

[ ! -e 48T02_battery_replacement.GBL ] && \
  ln -s ../gerbers/48T02_battery_replacement-B.Cu.gbr \
    48T02_battery_replacement.GBL

# Missing bottom silk-screen overlay:
#   48T02_battery_replacement.GBO

[ ! -e 48T02_battery_replacement.GBS ] && \
  ln -s ../gerbers/48T02_battery_replacement-B.Mask.gbr \
    48T02_battery_replacement.GBS

[ ! -e 48T02_battery_replacement.GML ] && \
  ln -s ../gerbers/48T02_battery_replacement-Edge.Cuts.gbr \
    48T02_battery_replacement.GML

[ ! -e 48T02_battery_replacement.GTL ] && \
  ln -s ../gerbers/48T02_battery_replacement-F.Cu.gbr \
    48T02_battery_replacement.GTL

# Missing top silk-screen overlay:
#   48T02_battery_replacement.GTO

[ ! -e 48T02_battery_replacement.GTS ] && \
  ln -s ../gerbers/48T02_battery_replacement-F.Mask.gbr \
    48T02_battery_replacement.GTS

zip --logfile zip.log --log-info --latest-time \
  gw-48T02-1.zip 48T02_battery_replacement.*
# --datafork
# --archive-comment < 48T02_readme.txt \

echo
unzip -l gw-48T02-1.zip
