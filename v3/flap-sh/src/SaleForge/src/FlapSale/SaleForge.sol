// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {ISaleForge} from "../interfaces/FlapSale/ISaleForge.sol";
import {SaleForgeBase} from "./SaleForgeBase.sol";
import {SaleProxy} from "./SaleProxy.sol";

/// @title SaleForge
/// @notice Main dispatcher contract for FlapSales - similar to Portal.sol
/// @dev All function calls are delegated to facet implementations
/// @dev Note: View functions are marked as external (not view) due to delegation limitations
/// @author The Flap Team
contract SaleForge is SaleForgeBase {
    constructor(ConstructorParams memory params) SaleForgeBase(params) {
        _disableInitializers();
    }

    /// @notice Initialize the contract
    /// @dev Sets up the default admin role
    function initialize() public initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    //
    // View Functions - Delegated to SaleForgeLens
    //
    function getSaleInfo(address)
        /*token*/
        external
        view
        returns (SaleInfo memory)
    /*saleInfo*/
    {
        _delegateToImplView(SALE_FORGE_LENS);
    }

    function isWhitelisted(address, /*token*/ address /*user*/ ) external view returns (bool) {
        _delegateToImplView(SALE_FORGE_LENS);
    }

    function getWhitelist(address, /*token*/ uint256, /*offset*/ uint256 /*limit*/ )
        external
        returns (address[] memory, /*addresses*/ uint256 /*totalCount*/ )
    {
        _delegateToImplView(SALE_FORGE_LENS);
    }

    function getParticipantInfo(address, /*token*/ address /*participant*/ )
        external
        returns (ParticipantInfo memory /*info*/ )
    {
        _delegateToImplView(SALE_FORGE_LENS);
    }

    function getParticipantCount(address /*token*/ ) external view returns (uint256 /*count*/ ) {
        _delegateToImplView(SALE_FORGE_LENS);
    }

    function getParticipants(address, /*token*/ uint256, /*offset*/ uint256 /*limit*/ )
        external
        view
        returns (address[] memory, /*participantsArr*/ uint256[] memory, /*participations*/ uint256 /*totalCount*/ )
    {
        _delegateToImplView(SALE_FORGE_LENS);
    }

    function simulateEconomics(SimulationParams calldata /*params*/ )
        external
        view
        returns (SimulationResult memory /*result*/ )
    {
        _delegateToImplView(SALE_FORGE_LENS);
    }

    function getTokenDistributionProgress(address /*token*/ )
        external
        view
        returns (uint256, /*distributed*/ uint256 /*total*/ )
    {
        _delegateToImplView(SALE_FORGE_LENS);
    }

    //
    // Launcher Functions - Delegated to SaleForgeLauncher
    //
    function createSale(SaleParams calldata)
        /*params*/
        external
        payable
        returns (address, /*token*/ address /*saleProxy*/ )
    {
        _delegateToImpl(SALE_FORGE_LAUNCHER);
    }

    function cancelSale(address /*token*/ ) external {
        _delegateToImpl(SALE_FORGE_LAUNCHER);
    }

    function updateMetadata(address, /*token*/ string calldata /*newMeta*/ ) external {
        _delegateToImpl(SALE_FORGE_LAUNCHER);
    }

    function toggleWhitelist(address, /*token*/ bool /*enabled*/ ) external {
        _delegateToImpl(SALE_FORGE_LAUNCHER);
    }

    function addToWhitelist(address, /*token*/ address[] calldata /*addresses*/ ) external {
        _delegateToImpl(SALE_FORGE_LAUNCHER);
    }

    function removeFromWhitelist(address, /*token*/ address[] calldata /*addresses*/ ) external {
        _delegateToImpl(SALE_FORGE_LAUNCHER);
    }

    //
    // Participation Functions - Delegated to SaleForgeParticipation
    //
    function participate(address)
        /*token*/
        external
        payable
    {
        _delegateToImpl(SALE_FORGE_PARTICIPATION);
    }

    function participateThroughProxy(address, /*token*/ address /*participant*/ ) external payable {
        _delegateToImpl(SALE_FORGE_PARTICIPATION);
    }

    //
    // Finalization Functions - Delegated to SaleForgeFinalize
    //
    function finalizeSale(address)
        /*token*/
        external
    {
        _delegateToImpl(SALE_FORGE_FINALIZE);
    }

    function claimTokens(address /*token*/ ) external {
        _delegateToImpl(SALE_FORGE_FINALIZE);
    }

    function getRefund(address /*token*/ ) external {
        _delegateToImpl(SALE_FORGE_FINALIZE);
    }

    function distributeTokens(address, /*token*/ uint256 /*limit*/ ) external returns (uint256 /*remaining*/ ) {
        _delegateToImpl(SALE_FORGE_FINALIZE);
    }

    function finalizeSaleAndDistribute(address, /*token*/ uint256 /*limit*/ )
        external
        returns (uint256 /*remaining*/ )
    {
        _delegateToImpl(SALE_FORGE_FINALIZE);
    }

    /// @notice Get the contract version
    /// @return version string
    function version() external pure returns (string memory) {
        return "beta-0.0.3";
    }
}
