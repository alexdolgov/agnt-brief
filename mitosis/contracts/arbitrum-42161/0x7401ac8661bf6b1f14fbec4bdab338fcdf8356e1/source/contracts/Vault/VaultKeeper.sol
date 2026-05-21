// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {TheoDepositVault} from "./TheoDepositVault.sol";
import {Vault} from "./lib/Vault.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";

/*
 * @title - VaultKeeper
 * @notice - This contract is responsible for rolling rounds and managing vaults
 * @notice - This contract takes the place of the Keeper in TheoDepositVaults to avoid front-runs
 */
contract VaultKeeper is Ownable2Step {
    /************************************************
     *  STATE
     ***********************************************/

    mapping(string => address) public vaults;

    constructor() Ownable(msg.sender) {}

    /************************************************
     *  ROLLING ROUND
     ***********************************************/

    /**
     * @notice - Roll round for a list of vaults. Vaults should be added to state before rolling round
     * @param tickers - List of vault tickers
     * @param lockedBalances - List of locked balances (includes pending withdrawals)
     */
    function rollRound(string[] calldata tickers, uint256[] calldata lockedBalances) external onlyOwner {
        require(tickers.length == lockedBalances.length, "VaultKeeper: Invalid input");
        for (uint256 i = 0; i < tickers.length; i++) {
            require(vaults[tickers[i]] != address(0), "VaultKeeper: Invalid vault");
            _rollRound(tickers[i], lockedBalances[i]);
        }
    }

    /************************************************
     *  MANAGEMENT
     ***********************************************/
    function addVault(string calldata ticker, address vault) external onlyOwner {
        require(vaults[ticker] == address(0), "VaultKeeper: Vault already exists");
        require(vault != address(0), "VaultKeeper: Invalid vault");
        vaults[ticker] = vault;
    }

    function removeVault(string calldata ticker) external onlyOwner {
        delete vaults[ticker];
    }

    /*
     * @notice - Emergency withdraw assets from the contract
     * @param token - Address of the token to withdraw. 0x0 for native token
     * @param amount - Amount to withdraw
     */
    function withdraw(address token, uint256 amount) external onlyOwner {
        if (token == address(0)) {
            payable(owner()).transfer(amount);
        } else {
            SafeERC20.safeTransfer(ERC20(token), owner(), amount);
        }
    }

    /************************************************
     *  HELPERS
     ***********************************************/

    function _rollRound(string memory ticker, uint256 lockedBalance) internal {
        TheoDepositVault vault = TheoDepositVault(payable(vaults[ticker]));
        (, address _asset, , ) = vault.vaultParams();
        ERC20 asset = ERC20(_asset);
        uint256 currBalance = asset.balanceOf(address(vault)) + lockedBalance;
        _transferAssets(address(asset), vault, currBalance);

        vault.rollToNextRound(currBalance);
        asset.transfer(owner(), asset.balanceOf(address(this)));
    }

    function _transferAssets(address asset, TheoDepositVault vault, uint256 currBalance) internal {
        uint256 queuedWithdrawAmount = vault.getCurrQueuedWithdrawAmount(currBalance);

        uint256 lastQueuedWithdrawAmount = vault.lastQueuedWithdrawAmount();

        SafeERC20.safeTransferFrom(ERC20(asset), owner(), address(vault), queuedWithdrawAmount - lastQueuedWithdrawAmount);

        require(ERC20(asset).balanceOf(address(vault)) >= queuedWithdrawAmount, "VaultKeeper: Not enough assets");
    }
}
