
var MLSToken = artifacts.require("./MLSToken.sol");


module.exports = function(deployer) {
  deployer.deploy(MLSToken);
};
