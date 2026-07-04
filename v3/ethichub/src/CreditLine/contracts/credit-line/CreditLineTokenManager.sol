// SPDX-License-Identifier: GPLv3
pragma solidity ^0.8.24;

import {TREASURY_MANAGER} from "../Roles.sol";
import {NFT} from "../token/NFT.sol";
import {ERC20TokenManager} from "../token/ERC20TokenManager.sol";
import {CreditLineLib} from "../libraries/CreditLineLib.sol";

/**
 * @title CreditLineTokenManager
 * @dev Manages the creation and updating of non-fungible tokens (NFTs) representing credit lines.
 * This contract inherits from NFT and uses CreditLineLib for credit line management.
 * @author Ethichub
 */
contract CreditLineTokenManager is NFT, ERC20TokenManager {
    using CreditLineLib for CreditLineLib.CreditLine;

    /**
     * @dev Emitted when a new credit line NFT is created.
     * @param id The unique identifier of the created credit line NFT.
     */
    event CreditLineMinted(uint256 indexed id);
    /**
     * @dev Emitted when tokens are swept from the contract
     * @param token Address of the token swept
     * @param amount Amount of tokens swept
     */
    event TokensSwept(address indexed token, uint256 amount);

    /**
     * @dev Error thrown when attempting to transfer a credit line NFT.
     */
    error TransferDisabled();

    /**
     * @dev Initializes the CreditLineTokenManager contract.
     * @param _name The name of the NFT token.
     * @param _symbol The symbol of the NFT token.
     * @param _accessManager The address of the access management contract.
     */
    function __CreditLineTokenManager_init(
        string calldata _name,
        string calldata _symbol,
        address _accessManager
    ) public initializer {
        __NFT_init(_name, _symbol, _accessManager);
    }

    /**
     * @notice Sweeps tokens accidentally sent to the contract
     * @dev This function can only be called by an account with the TREASURY_MANAGER role
     * @dev WARNING: Due diligence is needed on the token address, as it might be malicious
     * @param token Address of the token to sweep
     * @param to Address to send the swept tokens to
     */
    function sweepTokens(
        address token,
        address to
    ) external onlyRole(TREASURY_MANAGER) {
        uint256 drained = _drainTokens(token, to);
        emit TokensSwept(token, drained);
    }

    /**
     * @notice Creates a new NFT representing a credit line.
     * @param originator The address of the originator (and recipient of the NFT).
     * @return creditLineID The ID of the newly created credit line NFT.
     */
    function _mintCreditLine(
        address originator
    )
        internal
        returns (uint256 creditLineID)
    {
        creditLineID = _safeMint(originator);
        emit CreditLineMinted(creditLineID);
        return creditLineID;
    }


    /**
     * @dev Overrides the _update function to prevent transfer of credit line NFTs.
     * @param to The destination address for the update.
     * @param tokenId The ID of the token being updated.
     * @param auth The address authorized to perform the update.
     * @return The address from which the update was made.
     */
    function _update(
        address to,
        uint256 tokenId,
        address auth
    ) internal virtual override returns (address) {
        address from = _ownerOf(tokenId);
        if (from != address(0) && to != from)
            revert TransferDisabled();
        return super._update(to, tokenId, auth);
    }
}
