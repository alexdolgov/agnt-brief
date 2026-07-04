// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./CrossFarmingToken.sol";

contract CrossFarmingTokenDeployer is Ownable {
    event CrossFarmingTokenContract(address indexed crossFarmingTokenAddress);

    /**
     * @notice Constructor
     */
    constructor() {}

    /**
     * @notice It creates the cross farming contract .
     */
    function createCrossFarmingToken(
        string memory _name,
        string memory _symbol,
        address _receiver
    ) external onlyOwner {
        address crossFarmingTokenAddress = address(new CrossFarmingToken(_name, _symbol, _receiver));

        emit CrossFarmingTokenContract(crossFarmingTokenAddress);
    }
}
