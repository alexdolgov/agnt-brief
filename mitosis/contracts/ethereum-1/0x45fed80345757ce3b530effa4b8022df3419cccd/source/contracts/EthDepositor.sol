// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "./Errors/Errors.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IWeth } from "./Strategies/interfaces/IWeth.sol";

/**
 * @author  Renzo Protocol
 * @title   EthDepositor
 * @dev     Helper contract for depositing native ETH into WETH-based LEZy vaults
 * @notice  This contract converts ETH to WETH and deposits it into a vault on behalf of users,
 *          improving UX by eliminating the need for users to wrap ETH manually.
 */
contract EthDepositor {
    using SafeERC20 for IERC20;

    /// @notice WETH token contract
    IWeth public immutable weth;

    /// @notice Emitted when ETH is deposited into a vault
    event EthDeposited(
        address indexed vault,
        address indexed depositor,
        address indexed receiver,
        uint256 ethAmount,
        uint256 shares
    );

    /**
     * @notice Constructor
     * @param _weth Address of the WETH token contract
     */
    constructor(address _weth) {
        if (_weth == address(0)) revert InvalidZeroInput();
        weth = IWeth(_weth);
    }

    /**
     * @notice Deposits native ETH into a WETH-based vault
     * @dev Wraps ETH to WETH, then deposits into the specified vault
     * @param vault Address of the LEZy vault to deposit into
     * @param receiver Address that will receive the vault shares
     * @return shares Amount of vault shares minted to the receiver
     */
    function depositEth(address vault, address receiver) external payable returns (uint256 shares) {
        // Validate inputs
        if (vault == address(0)) revert InvalidZeroInput();
        if (receiver == address(0)) revert InvalidZeroInput();
        if (msg.value == 0) revert InvalidZeroInput();

        // Verify the vault's underlying asset is WETH
        address underlyingAsset = IERC4626(vault).asset();
        if (underlyingAsset != address(weth)) {
            revert InvalidAsset();
        }

        // Wrap ETH to WETH
        weth.deposit{ value: msg.value }();

        // Approve vault to spend WETH
        IERC20(address(weth)).forceApprove(vault, msg.value);

        // Deposit WETH into vault on behalf of receiver
        shares = IERC4626(vault).deposit(msg.value, receiver);

        // Emit event
        emit EthDeposited(vault, msg.sender, receiver, msg.value, shares);

        return shares;
    }
}
