// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";

abstract contract BaseFactory is Ownable2Step {
    /**
     *
     *  EVENTS
     *
     */
    event DeployerAuthorized(address indexed deployer);
    event DeployerUnauthorized(address indexed deployer);

    /**
     *
     *  CUSTOM ERRORS
     *
     */
    error BaseFactory__NotAuthorizedDeployer();

    /**
     *
     *  STORAGE
     *
     */
    // Per-owner nonce used in CREATE2 salt computation to avoid cross-user races.
    mapping(address => uint256) public nonceByOwner;

    mapping(address => bool) public isAuthorizedDeployer;

    /**
     *
     *  MODIFIERS
     *
     */
    modifier onlyAuthorizedDeployer() {
        require(isAuthorizedDeployer[msg.sender], BaseFactory__NotAuthorizedDeployer());
        _;
    }

    /**
     *
     *  CONSTRUCTOR
     *
     */
    constructor(address initialOwner) Ownable(initialOwner) {}

    /**
     *
     *  EXTERNAL FUNCTIONS
     *
     */
    function authorizeDeployer(address deployer) external onlyOwner {
        isAuthorizedDeployer[deployer] = true;
        emit DeployerAuthorized(deployer);
    }

    function unauthorizeDeployer(address deployer) external onlyOwner {
        isAuthorizedDeployer[deployer] = false;
        emit DeployerUnauthorized(deployer);
    }
}
