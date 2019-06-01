/* jshint indent: 1 */

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('drinks', {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    name: {
      type: DataTypes.STRING,
      allowNull: true
    },
    description: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    price: {
      type: DataTypes.DOUBLE,
      allowNull: true
    }
  }, {
    timestamps: false,
    tableName: 'drinks'
  });
};
