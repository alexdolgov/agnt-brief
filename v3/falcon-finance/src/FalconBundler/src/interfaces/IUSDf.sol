// SPDX-License-Identifier: MIT
pragma solidity >=0.8.28;

import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IUSDf {

    error ZeroAddress();
    error StatusNotChanged();
    error AddressRestricted(address account);

    event AddressRestrictionSet(address indexed account, bool restricted);

    /**
     * @notice Mint `amount` of USDf tokens to `to`.
     * @dev Can only be called by accounts with the MINTER_ROLE.
     * @param to The address to mint tokens to.
     * @param amount The amount of tokens to mint.
     */
    function mint(address to, uint256 amount) external;

    /**
     * @notice Burn `amount` of USDf tokens from `from`.
     * @dev Can only be called by accounts with the BURNER_ROLE.
     * @param from The address to burn tokens from.
     * @param amount The amount of tokens to burn.
     */
    function burn(address from, uint256 amount) external;

    /**
     * @notice Set the restriction status of an address, forbidding transfers of any kind.
     * @dev Can only be called by accounts with the DEFAULT_ADMIN_ROLE.
     * @param account The address to set the restriction status for.
     * @param restricted The restriction status to set.
     */
    function setRestriction(address account, bool restricted) external;

    /**
     * @notice Returns the restriction status of an address.
     * @param account The address to check the restriction status for.
     */
    function isRestricted(address account) external view returns (bool);

}
