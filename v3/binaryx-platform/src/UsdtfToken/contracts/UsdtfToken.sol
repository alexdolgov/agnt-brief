// NOT USED: this is ONLY for dev
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./v3/interfaces/IAccessManager.sol";

contract UsdtfToken is ERC20 {
    uint256 limitPerUser = 3000 * 1e6;
    uint256 limitInSeconds = 1 days;
    IAccessManager accessManager;
    mapping(address => uint256) public minted;

    modifier onlySuperOracle() {
        require(accessManager.isSuperOracle(msg.sender), "Only admin can call this function");
        _;
    }

    constructor(uint256 initialSupply, address _accessManager) ERC20("Usdt fake token", "USDTF") {
        _mint(msg.sender, initialSupply);
        accessManager = IAccessManager(_accessManager);
    }

    function decimals() public view virtual override returns (uint8) {
        return 6;
    }

    function getLimitAmount() public view returns (uint256) {
        return limitPerUser;
    }

    function getLimitTime() public view returns (uint256) {
        return limitInSeconds;
    }

    function isMinted(address user) public view returns (bool) {
        if (minted[user] == 0) {
            return false;
        }
        if (block.timestamp - minted[user] > limitInSeconds) {
            return false;
        }
        return true;
    }

    function userMint() public {
        require(!isMinted(msg.sender), "User has minted");
        minted[msg.sender] = block.timestamp;
        _mint(msg.sender, limitPerUser);
    }

    function demoMint(uint256 amount) public onlySuperOracle {
        _mint(msg.sender, amount * 1e6);
    }

    function changeLimitAmount(uint256 amount) public onlySuperOracle {
        limitPerUser = amount;
    }

    function changeLimitTime(uint256 time) public onlySuperOracle {
        limitInSeconds = time;
    }
}
