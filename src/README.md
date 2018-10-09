For a fresh machine with docker just installed you will need zcash-params because they are not bundled into the docker image.


For a non-root user

<pre>
  sudo apt-get install make
  mkdir ~/.zcash-params
  cd ~/.zcash-params
  wget  https://z.cash/downloads/sprout-proving.key
  wget https://z.cash/downloads/sprout-verifying.key
</pre>
