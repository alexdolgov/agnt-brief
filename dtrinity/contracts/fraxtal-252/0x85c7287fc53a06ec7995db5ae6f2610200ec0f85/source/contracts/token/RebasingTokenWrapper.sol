// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20, IERC20Metadata, ERC20} from "@openzeppelin/contracts-5/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts-5/token/ERC20/utils/SafeERC20.sol";
import {ERC4626} from "@openzeppelin/contracts-5/token/ERC20/extensions/ERC4626.sol";

/**
 * @title RebasingTokenWrapper
 * @dev Wrapper for rebasing tokens that implements ERC4626
 * This creates a non-rebasing version of the rebasing token while preserving value accrual
 */
contract RebasingTokenWrapper is ERC4626 {
    /**
     * @dev Constructor for RebasingTokenWrapper
     * @param rebasingToken The rebasing token address to wrap
     * @param name_ Name of the wrapped token
     * @param symbol_ Symbol of the wrapped token
     */
    constructor(
        address rebasingToken,
        string memory name_,
        string memory symbol_
    ) ERC4626(IERC20(rebasingToken)) ERC20(name_, symbol_) {}
}

/**
 * @title RebasingTokenWrapperFactory
 * @dev Factory contract for creating RebasingTokenWrapper instances. Allows permissionless creation.
 */
contract RebasingTokenWrapperFactory {
    using SafeERC20 for IERC20;

    // Mapping from rebasing token address to its wrapper
    mapping(address => address) public wrapperByRebasingToken;

    // Event emitted when a new wrapper is created
    event WrapperCreated(
        address indexed rebasingToken,
        address indexed wrapper,
        string name,
        string symbol
    );

    // --- Custom Errors ---
    error InvalidRebasingTokenAddress(address tokenAddress);
    error WrapperAlreadyExists(address rebasingTokenAddress);
    error MetadataFetchFailed(address tokenAddress);

    /**
     * @dev Creates a new wrapper for a rebasing token. Name and symbol are generated automatically.
     * @param rebasingToken The address of the rebasing token to wrap.
     * @return The address of the created wrapper.
     */
    function createWrapper(address rebasingToken) external returns (address) {
        if (rebasingToken == address(0))
            revert InvalidRebasingTokenAddress(rebasingToken);
        if (wrapperByRebasingToken[rebasingToken] != address(0))
            revert WrapperAlreadyExists(rebasingToken);

        // Get original token metadata with checks
        string memory originalName;
        string memory originalSymbol;
        try IERC20Metadata(rebasingToken).name() returns (string memory name_) {
            originalName = name_;
        } catch {
            revert MetadataFetchFailed(rebasingToken);
        }
        try IERC20Metadata(rebasingToken).symbol() returns (
            string memory symbol_
        ) {
            originalSymbol = symbol_;
        } catch {
            revert MetadataFetchFailed(rebasingToken);
        }

        // Construct new name and symbol
        string memory newName = string(
            abi.encodePacked("Wrapped ", originalName)
        );
        string memory newSymbol = string(abi.encodePacked("w", originalSymbol));

        // Create a new wrapper contract
        RebasingTokenWrapper wrapper = new RebasingTokenWrapper(
            rebasingToken,
            newName,
            newSymbol
        );

        // Store the wrapper address
        address wrapperAddress = address(wrapper);
        wrapperByRebasingToken[rebasingToken] = wrapperAddress;

        emit WrapperCreated(rebasingToken, wrapperAddress, newName, newSymbol);

        return wrapperAddress;
    }
}
