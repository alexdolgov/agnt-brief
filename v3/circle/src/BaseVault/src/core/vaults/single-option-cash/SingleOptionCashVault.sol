// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

// external libraries
import {TokenIdUtil} from "grappa/libraries/TokenIdUtil.sol";

// abstracts
import {CashOptionsVault} from "../mixins/options/CashOptionsVault.sol";
import {SingleOptionCashVaultStorage} from "./SingleOptionCashVaultStorage.sol";

import {TokenType} from "grappa/config/types.sol";

import "./errors.sol";
import "../../../config/types.sol";
import {PLACEHOLDER_UINT} from "../../../config/constants.sol";

/**
 * UPGRADEABILITY: Since we use the upgradeable proxy pattern, we must observe the inheritance chain closely.
 * Any changes/appends in storage variable needs to happen in VaultStorage.
 * SingleOptionVault should not inherit from any other contract aside from OptionVault, VaultStorage
 */
contract SingleOptionCashVault is CashOptionsVault, SingleOptionCashVaultStorage {
    using TokenIdUtil for uint256;

    /*///////////////////////////////////////////////////////////////
                                Events
    //////////////////////////////////////////////////////////////*/
    event GoldenTokenSet(uint256 goldenToken, uint256 newGoldenToken);

    /*///////////////////////////////////////////////////////////////
                    Constructor and initialization
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Initializes the contract with immutable variables
     * @param _registrar is the address of the registrar contract
     * @param _share is the erc1155 contract that issues shares
     * @param _marginEngine is the margin engine used for Grappa (options protocol)
     */
    constructor(address _registrar, address _share, address _marginEngine) CashOptionsVault(_registrar, _share, _marginEngine) {}

    /**
     * @notice Initializes the OptionsVault contract with storage variables.
     * @param _initParams is the struct with vault initialization parameters
     * @param _auction is the address that settles the option contract
     * @param _token is the golden token to compare options against
     */
    function initialize(InitParams calldata _initParams, address _auction, uint256 _token, Collateral calldata _premium)
        external
        initializer
    {
        __OptionsVault_init(_initParams, _auction, _premium);

        (, uint40 productId,,,) = _token.parseTokenId();

        if (productId == 0) revert SOCV_BadProductId();

        goldenToken = _token;
    }

    /*///////////////////////////////////////////////////////////////
                            Vault Operations
    //////////////////////////////////////////////////////////////*/

    // // Commenting out for space
    // function setGoldenToken(uint256 _goldenToken) external {
    //     _onlyOwner();

    //     (, uint40 productId,,,) = _goldenToken.parseTokenId();

    //     if (productId == 0) revert SOCV_BadProductId();

    //     emit GoldenTokenSet(goldenToken, _goldenToken);

    //     goldenToken = _goldenToken;
    // }

    function verifyOptions(uint256[] calldata _options) external view override {
        uint256 currentRoundExpiry = expiry[vaultState.round];

        // initRounds set value to 1, so 0 or 1 are seed values
        if (currentRoundExpiry <= PLACEHOLDER_UINT) revert SOCV_BadExpiry();

        (TokenType tokenType, uint40 productId,,,) = goldenToken.parseTokenId();

        for (uint256 i; i < _options.length;) {
            (TokenType tokenType_, uint40 productId_, uint64 expiry,,) = _options[i].parseTokenId();

            if (tokenType_ != tokenType) revert SOCV_TokenTypeMismatch();

            if (productId_ != productId) revert SOCV_ProductIdMismatch();

            // expirations need to match
            if (currentRoundExpiry != expiry) revert SOCV_ExpiryMismatch();

            unchecked {
                ++i;
            }
        }
    }
}
