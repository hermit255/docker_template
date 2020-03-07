SCRIPT_DIR=$SCRIPTDIR_DOCKER
WORK_DIR=$WORKDIR_DOCKER
HOST_UID=1000

NODE_MODULES_DIR=${WORKDIR_DOCKER}node_modules/

# SUDO=sudo
SUDO=

if [ ! -e ${WORKDIR_DOCKER}package.json ]; then
  # /* On no package.json */
  # echo 'INFO: react project is not installed.'
  # echo 'INFO: creating new react project.'
  # npx create-react-app $WORKDIR_DOCKER
  # chown -R $HOST_UID $WORKDIR_DOCKER
elif [ -z "$(ls $NODE_MODULES_DIR)" ]; then
  # /* On node_modules empty and has package.json */
  # echo 'INFO: react project is not installed.'
  # echo 'INFO: installing react project.'
  # npm install
  # chown -R $HOST_UID $WORKDIR_DOCKER
else
  # /* After install nodemodules */
  # echo 'INFO: react project detected.'
  # npm start
fi
