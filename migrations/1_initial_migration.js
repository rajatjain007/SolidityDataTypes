const Migrations = artifacts.require("Migrations");
const DataTypes = artifacts.require("DataTypes");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(DataTypes);
};
