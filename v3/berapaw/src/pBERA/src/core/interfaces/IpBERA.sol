// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { IErrors } from "./IErrors.sol";

interface IpBERA is IErrors {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         EVENTS                             */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @dev Emitted when the flash mint fee is set.
     * @param fee The new flash mint fee in basis points (bps).
     */
    event FlashFeeSet(uint256 fee);

    /**
     * @dev Emitted when the flash mint max limit is set.
     * @param amount The new flash mint max limit.
     */
    event FlashMaxMintSet(uint256 amount);

    /**
     * @dev Emitted when the flash fee collector is set.
     * @param feeCollector The new flash fee collector address.
     */
    event FlashFeeCollectorSet(address feeCollector);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       ADMIN FUNCTIONS                      */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Set the flash mint fee in basis points (bps).
     * @dev Only the admin can set the flash mint fee.
     * @param _flashMintPercentualFee The flash mint fee in basis points (bps).
     */
    function setFlashMintFee(uint16 _flashMintPercentualFee) external;

    /**
     * @notice Set the flash mint max limit.
     * @dev Only the admin can set the flash mint max limit.
     * @param _maxFlashMint The flash mint max limit.
     */
    function setFlashMaxMint(uint256 _maxFlashMint) external;

    /**
     * @notice Set the flash fee collector address.
     * @dev Only the admin can set the flash fee collector address.
     * @param _feeCollector The address to set as the flash fee collector.
     */
    function setFlashFeeCollector(address _feeCollector) external;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         GETTERS                            */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Gets Bera Staker contract address.
     * @return Returns BeraPaw Forge contract address.
     */
    function beraStaker() external view returns (address);

    /**
     * @notice Get the current percentual fee for flash minting LBGT tokens
     * @dev Fee is represented in basis points (1 = 0.01%), with a max of 10,000 (100%)
     * @return The current flash mint fee percentage in basis points
     */
    function flashMintPercentualFee() external view returns (uint16);

    /**
     * @notice Get the address that collects flash mint fees
     * @dev Returns address(0) if no fee collector has been set
     * @return The address where flash mint fees are sent
     */
    function flashFeeCollector() external view returns (address);

    /**
     *  @notice Get the maximum amount of LBGT that can be flash minted
     *  @dev Flash minters with ROLE_FLASH_MINTER bypass this limit
     * @return The maximum amount of tokens that can be flash minted
     */
    function flashMaxMint() external view returns (uint256);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   BERAPAW FORGE FUNCTIONS                  */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Mint new tokens to a given address.
     * @dev Only the BeraPaw vault can mint tokens.
     * @param to The address to mint tokens to.
     * @param amount The amount of tokens to mint.
     */
    function mint(address to, uint256 amount) external;

    /**
     * @notice Burn a given amount of tokens from a given address.
     * @dev Only the BeraPaw vault can burn tokens.
     * @param from The address to burn tokens from.
     * @param amount The amount of tokens to burn.
     */
    function burn(address from, uint256 amount) external;
}
