// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./interfaces/IDackieUSD.sol";
import "./interfaces/IDackieOracle.sol";

/**
 * @title DackieUSDFactory
 * @dev Factory contract for minting and burning Dackie USD (dckUSD) tokens.
 * Inherits from Ownable to provide ownership control.
 */
contract DackieUSDFactory is Ownable {
    IERC20 public dackie; // Dackie token contract
    IDackieUSD public dckUSD; // Dackie USD token contract
    IDackieOracle public dackieOracle; // Oracle contract for Dackie token price

    event Mint(address indexed user, uint256 dckUSDAmount, uint256 dackieAmount);
    event Burn(address indexed user, uint256 dckUSDAmount, uint256 dackieAmount);
    event DackieOracleUpdated(address indexed oldOracle, address indexed newOracle);
    event OperationTransfer(address indexed to, uint256 amount);

    /**
     * @dev Constructor to initialize the contract with token and oracle addresses.
     * @param _dackie The address of the Dackie token contract.
     * @param _dckUSD The address of the Dackie USD token contract.
     * @param _dackieOracle The address of the Dackie Oracle contract.
     */
    constructor(address _dackie, address _dckUSD, address _dackieOracle) {
        dackie = IERC20(_dackie);
        dckUSD = IDackieUSD(_dckUSD);
        dackieOracle = IDackieOracle(_dackieOracle);
    }

    /**
     * @dev Mints dckUSD tokens by transferring Dackie tokens from the user to the contract.
     * @param _dackieAmount The amount of Dackie tokens to use for minting.
     */
    function mint(uint256 _dackieAmount) external {
        require(_dackieAmount > 0, "Amount must be greater than zero");
        uint256 dckUSDAmount = (_dackieAmount * dackieOracle.getDackiePrice() * 1e6) / (1e18 * 1e18);
        dackie.transferFrom(msg.sender, address(this), _dackieAmount);
        dckUSD.mint(msg.sender, dckUSDAmount);
        emit Mint(msg.sender, dckUSDAmount, _dackieAmount);
    }

    /**
     * @dev Burns dckUSD tokens by transferring them from the user to the contract and unlocking Dackie tokens.
     * @param _dckUSDAmount The amount of dckUSD tokens to be burned.
     */
    function burn(uint256 _dckUSDAmount) external {
        require(_dckUSDAmount > 0, "Amount must be greater than zero");
        uint256 dackieAmount = ((_dckUSDAmount * 1e18 * 1e18) / dackieOracle.getDackiePrice()) / 1e6;
        require(dackie.balanceOf(address(this)) >= dackieAmount, "Not enough Dackie tokens in the contract");
        dckUSD.transferFrom(msg.sender, address(this), _dckUSDAmount);
        dackie.transfer(msg.sender, dackieAmount);
        dckUSD.burn(address(this), _dckUSDAmount);
        emit Burn(msg.sender, _dckUSDAmount, dackieAmount);
    }

    /**
     * @dev Updates the Dackie Oracle contract address. Can only be called by the owner.
     * @param _dackieOracle The address of the new Oracle contract.
     */
    function setDackieOracle(address _dackieOracle) external onlyOwner {
        require(_dackieOracle != address(0), "Invalid address");
        address oldOracle = address(dackieOracle);
        dackieOracle = IDackieOracle(_dackieOracle);
        emit DackieOracleUpdated(oldOracle, _dackieOracle);
    }

    /**
     * @dev Transfers Dackie tokens to a specific address by The DackieSwap DAO.
     * @param _to The address to transfer Dackie tokens to.
     * @param _amount The amount of Dackie tokens to transfer.
     */
    function operationTransfer(address _to, uint256 _amount) external onlyOwner {
        require(_to != address(0), "Invalid address");
        require(_amount > 0, "Amount must be greater than zero");
        require(dackie.balanceOf(address(this)) >= _amount, "Not enough Dackie tokens in the contract");
        dackie.transfer(_to, _amount);
        emit OperationTransfer(_to, _amount);
    }
}