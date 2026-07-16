//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;

import "./interfaces/ITermController.sol";
import "./interfaces/ITermEventEmitter.sol";

import "./lib/TermAuctionGroup.sol";

import "./TermAuction.sol";
import "./TermAuctionBidLocker.sol";
import "./TermAuctionOfferLocker.sol";
import "./TermPriceConsumerV3.sol";
import "./TermRepoCollateralManager.sol";
import "./TermRepoLocker.sol";
import "./TermRepoRolloverManager.sol";
import "./TermRepoServicer.sol";
import "./TermRepoToken.sol";

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/// @author TermLabs
/// @title Term Initializer
/// @notice This contract provides utility methods for initializing/pairing a set of term/auction contracts
/// @dev This contract operates at the protocol level and provides utility functions for deploying terms/auctions
contract TermInitializer is AccessControlUpgradeable {
    // ========================================================================
    // = Errors ===============================================================
    // ========================================================================

    error DeployingPaused();

    // ========================================================================
    // = Access Roles =========================================================
    // ========================================================================

    bytes32 public constant DEPLOYER_ROLE = keccak256("DEPLOYER_ROLE");

    // ========================================================================
    // = State Variables ======================================================
    // ========================================================================

    ITermController internal controller;
    ITermEventEmitter internal emitter;
    TermPriceConsumerV3 internal priceOracle;
    bool internal deployingPaused;

    // ========================================================================
    // = Modifiers  ===========================================================
    // ========================================================================

    modifier whileDeployingNotPaused() {
        if (deployingPaused) {
            revert DeployingPaused();
        }
        _;
    }

    // ========================================================================
    // = Initialize (https://docs.openzeppelin.com/contracts/4.x/upgradeable) =
    // ========================================================================

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(DEPLOYER_ROLE, msg.sender);
        deployingPaused = false;
    }

    function pairTermContracts(
        ITermController controller_,
        ITermEventEmitter emitter_,
        TermPriceConsumerV3 priceOracle_
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        controller = controller_;
        emitter = emitter_;
        priceOracle = priceOracle_;
    }

    // ========================================================================
    // = Interface/API ========================================================
    // ========================================================================

    /// @notice Sets up a set of deployed term contracts
    function setupTerm(
        TermRepoLocker termRepoLocker,
        TermRepoServicer termRepoServicer,
        TermRepoCollateralManager termRepoCollateralManager,
        TermRepoRolloverManager rolloverManager,
        TermRepoToken termRepoToken,
        TermAuctionOfferLocker termAuctionOfferLocker,
        TermAuctionBidLocker termAuctionBidLocker,
        TermAuction auction,
        string memory termVersion,
        string memory auctionVersion
    ) external onlyRole(DEPLOYER_ROLE) whileDeployingNotPaused {
        priceOracle.reOpenToNewTerm(address(termRepoCollateralManager));
        priceOracle.reOpenToNewBidLocker(address(termAuctionBidLocker));
        termRepoLocker.pairTermContracts(emitter);
        termRepoToken.pairTermContracts(emitter);
        termAuctionBidLocker.pairTermContracts(
            address(auction),
            termRepoServicer,
            emitter,
            termRepoCollateralManager,
            priceOracle
        );
        termAuctionOfferLocker.pairTermContracts(
            address(auction),
            emitter,
            termRepoServicer
        );
        auction.pairTermContracts(
            emitter,
            termRepoServicer,
            termAuctionBidLocker,
            termAuctionOfferLocker,
            auctionVersion
        );
        termRepoServicer.pairTermContracts(
            address(termRepoLocker),
            address(termRepoCollateralManager),
            address(termRepoToken),
            address(termAuctionOfferLocker),
            address(auction),
            address(rolloverManager),
            termVersion
        );
        termRepoCollateralManager.pairTermContracts(
            address(termRepoLocker),
            address(termRepoServicer),
            address(termAuctionBidLocker),
            address(auction),
            address(controller),
            address(priceOracle),
            address(rolloverManager)
        );
        rolloverManager.pairTermContracts(address(termRepoServicer), emitter);
    }

    /// @notice Sets up a set of deployed term contracts
    function setupAuction(
        TermRepoServicer termRepoServicer,
        TermRepoCollateralManager termRepoCollateralManager,
        TermAuctionOfferLocker termAuctionOfferLocker,
        TermAuctionBidLocker termAuctionBidLocker,
        TermAuction auction,
        string calldata auctionVersion
    ) external onlyRole(DEPLOYER_ROLE) whileDeployingNotPaused {
        termAuctionBidLocker.pairTermContracts(
            address(auction),
            termRepoServicer,
            emitter,
            termRepoCollateralManager,
            priceOracle
        );
        termAuctionOfferLocker.pairTermContracts(
            address(auction),
            emitter,
            termRepoServicer
        );
        auction.pairTermContracts(
            emitter,
            termRepoServicer,
            termAuctionBidLocker,
            termAuctionOfferLocker,
            auctionVersion
        );

        termRepoCollateralManager.reopenToNewAuction(
            TermAuctionGroup({
                auction: auction,
                termAuctionBidLocker: termAuctionBidLocker,
                termAuctionOfferLocker: termAuctionOfferLocker
            })
        );

        termRepoServicer.reopenToNewAuction(
            TermAuctionGroup({
                auction: auction,
                termAuctionBidLocker: termAuctionBidLocker,
                termAuctionOfferLocker: termAuctionOfferLocker
            })
        );
    }

    // ========================================================================
    // = Pause Functions ======================================================
    // ========================================================================

    function pauseDeploying() external onlyRole(DEFAULT_ADMIN_ROLE) {
        deployingPaused = true;
    }

    function unpauseDeploying() external onlyRole(DEFAULT_ADMIN_ROLE) {
        deployingPaused = false;
    }
}
