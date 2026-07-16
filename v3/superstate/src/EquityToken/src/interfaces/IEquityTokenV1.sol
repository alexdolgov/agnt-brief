// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {IERC20Upgradeable} from "openzeppelin-contracts-upgradeable/contracts/token/ERC20/IERC20Upgradeable.sol";
import {IPermittable} from "./IPermittable.sol";
import {IAccountingPausable} from "./IAccountingPausable.sol";
import {IBridgeable} from "./IBridgeable.sol";
import {IAllowlistable} from "./IAllowlistable.sol";

interface IEquityTokenV1 is IERC20Upgradeable,
IPermittable, IAccountingPausable, IBridgeable, IAllowlistable {


    //Pausable related
    /**
     * @notice Invokes the {Pausable-_pause} internal function
     * @dev Can only be called by the admin
     */
    function pause() external;

    /**
     * @notice Invokes the {Pausable-_unpause} internal function
     * @dev Can only be called by the admin
     */
    function unpause() external;


    //Ownable2Upgradeable related
    /// @dev Thrown if an attempt to call `renounceOwnership` is made
    error RenounceOwnershipDisabled();
    error InvalidTransferToTokenContract();
    error InvalidArgumentLengths();
    /// @dev Thrown when a request is not sent by the authorized admin
    error Unauthorized();


    //Specific Admin actions
    /**
     * @notice Burn tokens from a given source address
     * @dev Only callable by the admin
     * @param src Source address from which tokens will be burned
     * @param amount Amount of tokens to burn
     */
    function adminBurn(address src, uint256 amount) external;
    /// @dev Event emitted when the admin burns tokens
    event AdminBurn(address indexed burner, address indexed src, uint256 amount);
    function mint(address dst, uint256 amount) external;
    function bulkMint(address[] calldata dsts, uint256[] calldata amounts) external;
    /// @dev Event emitted when tokens are minted
    event Mint(address indexed minter, address indexed to, uint256 amount);
    function setAllowlist(address _allowlist) external;
}
