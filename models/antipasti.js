/* jshint indent: 1 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('antipasti', {
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
		price: {
			type: DataTypes.DOUBLE,
			allowNull: true
		}
	}, {
		tableName: 'antipasti'
	});
};
