/* jshint indent: 1 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('ingredients', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		name: {
			type: DataTypes.STRING,
			allowNull: true
		}
	}, {
		tableName: 'ingredients'
	});
};
