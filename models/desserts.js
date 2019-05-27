/* jshint indent: 1 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('desserts', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		name: {
			type: DataTypes.TEXT,
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
		tableName: 'desserts'
	});
};
