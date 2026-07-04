// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./interfaces/IOrbs.sol";

contract CopperOrbMinter is Ownable {
    event CopperOrbsMinted(address indexed minter, uint256 amount, uint256 ketPaid);
    event AdminMinted(address indexed to, uint256 amount);

    IERC20 public immutable ketToken;
    IOrbs public immutable orbsContract;
    uint256 public constant COPPER_ORB_ID = 1;

    uint256 public pricePerOrb;
    uint256 public maxMintsPerTx;
    address public treasury;

    constructor(
        address _ketToken,
        address _orbsContract,
        address _treasury,
        uint256 _pricePerOrb,
        uint256 _maxMintsPerTx
    ) Ownable(msg.sender) {
        require(_ketToken != address(0), "Invalid KET token address");
        require(_orbsContract != address(0), "Invalid Orbs contract address");
        require(_treasury != address(0), "Invalid treasury address");

        ketToken = IERC20(_ketToken);
        orbsContract = IOrbs(_orbsContract);
        treasury = _treasury;
        pricePerOrb = _pricePerOrb;
        maxMintsPerTx = _maxMintsPerTx;
    }

    function mintCopperOrbs(uint256 amount) external {
        require(amount > 0, "Amount must be greater than 0");
        require(amount <= maxMintsPerTx, "Exceeds maximum mint amount");

        uint256 totalCost = amount * pricePerOrb;
        ketToken.transferFrom(msg.sender, treasury, totalCost);
        orbsContract.mint(msg.sender, COPPER_ORB_ID, amount, "");
        emit CopperOrbsMinted(msg.sender, amount, totalCost);
    }

    function adminMint(address to, uint256 amount) external onlyOwner {
        require(amount > 0, "Amount must be greater than 0");

        orbsContract.mint(to, COPPER_ORB_ID, amount, "");
        emit AdminMinted(to, amount);
    }

    function setPrice(uint256 newPrice) external onlyOwner {
        pricePerOrb = newPrice;
    }

    function setMaxMintsPerTx(uint256 newMax) external onlyOwner {
        maxMintsPerTx = newMax;
    }

    function setTreasury(address newTreasury) external onlyOwner {
        require(newTreasury != address(0), "Invalid treasury address");
        treasury = newTreasury;
    }
}
