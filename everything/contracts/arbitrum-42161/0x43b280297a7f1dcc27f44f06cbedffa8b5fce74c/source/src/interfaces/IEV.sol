// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { IAccessControl } from "@openzeppelin-contracts-5/access/IAccessControl.sol";
import { IERC20Metadata } from "@openzeppelin-contracts-5/token/ERC20/extensions/IERC20Metadata.sol";
import { IERC20Permit } from "@openzeppelin-contracts-5/token/ERC20/extensions/IERC20Permit.sol";

interface IEV is IAccessControl, IERC20Metadata, IERC20Permit {
    /**
     * @notice Returns the ID of the main chain.
     * @dev The initial minting of the total EV token supply will occur on this chain.
     * @return mainChainId_ The ID of the main chain.
     */
    function MAIN_EV_CHAIN_ID() external pure returns (uint256 mainChainId_);

    /**
     * @notice Returns the identifier for the {REVOKE_MINTER_ROLE}.
     * @dev The {REVOKE_MINTER_ROLE} has control over the revocation of the {MINTER_ROLE}.
     * @return revokeMinterRole_ The identifier for the {REVOKE_MINTER_ROLE}.
     */
    function REVOKE_MINTER_ROLE() external pure returns (bytes32 revokeMinterRole_);

    /**
     * @notice Returns the identifier for the {MINTER_ROLE}.
     * @dev The {MINTER_ROLE} has control over EV minting operations.
     * @return minterRole_ The identifier for the {MINTER_ROLE}.
     */
    function MINTER_ROLE() external pure returns (bytes32 minterRole_);

    /**
     * @notice Initializes the EV contract.
     * @dev Mints the EV supply to the receiver on the main chain ({MAIN_EV_CHAIN_ID}).
     * @param owner The owner of the contract.
     * @param receiver The address that will receive the minted EV tokens.
     */
    function initialize(address owner, address receiver) external;

    /**
     * @notice Burns the specified amount of EV tokens from the caller.
     * @param amount The EV token amount to burn from the caller.
     */
    function burn(uint256 amount) external;

    /**
     * @notice Mints the specified amount of EV tokens to the given address.
     * @param account The recipient's address to which the EV tokens will be minted.
     * @param amount The EV token amount to mint to the recipient's address.
     */
    function mint(address account, uint256 amount) external;

    /**
     * @notice Revokes the {MINTER_ROLE} from the specified address, preventing it from minting EV tokens.
     * @param minter The address that will lose the {MINTER_ROLE}.
     */
    function revokeMinterRole(address minter) external;
}
