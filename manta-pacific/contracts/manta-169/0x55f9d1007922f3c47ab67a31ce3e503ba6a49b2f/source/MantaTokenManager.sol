// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./Manta.sol";

contract MantaTokenManager is Ownable {
    Manta public immutable manta;

    uint256 public constant mintCap = 200; // 2%
    uint256 public constant denominator = 10000;
    uint256 public constant mintPeriod = 365 days;
    uint256 public mintPermittedAfter;

    constructor(address token) {
        manta = Manta(token);
    }

    function setTransferWhitelist(
        address account,
        bool whitelisted
    ) external onlyOwner {
        manta.setWhitelist(account, whitelisted);
    }

    function enableTransfer() external onlyOwner {
        manta.enableTransfer();
    }

    function mint(address account, uint256 amount) public onlyOwner {
        if (mintPermittedAfter > 0) {
            require(
                mintPermittedAfter <= block.timestamp,
                "Manta: minting not permitted yet"
            );

            require(
                amount <= (manta.totalSupply() * mintCap) / denominator,
                "Manta: mint amount exceeds cap"
            );
        }

        manta.mint(account, amount);

        mintPermittedAfter = block.timestamp + mintPeriod;
    }

    function upgrade(address newManager) public onlyOwner {
        require(newManager != address(0), "Manta:  manager cannot be empty");

        manta.transferOwnership(newManager);
    }
}
