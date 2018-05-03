
#!/bin/bash -e
# Begin service ENV variables

if [ -z "$SHIPPABLE_START_MYSQL" ]; then
  export SHIPPABLE_START_MYSQL=true;
fi

if [ -z "$SHIPPABLE_MYSQL_PORT" ]; then
  export SHIPPABLE_MYSQL_PORT=3306;
fi

if [ -z "$SHIPPABLE_MYSQL_BINARY" ]; then
  export SHIPPABLE_MYSQL_BINARY="/usr/sbin/mysqld";
fi

if [ -z "$SHIPPABLE_MYSQL_CMD" ]; then
  export SHIPPABLE_MYSQL_CMD="mysqld";
fi

# End service ENV variables
