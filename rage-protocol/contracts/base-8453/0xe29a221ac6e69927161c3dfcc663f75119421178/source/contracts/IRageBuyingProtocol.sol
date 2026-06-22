// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import {RageStructs} from "./RageStructs.sol";
interface IRageBuyingProtocol {
    // Events
    event OptionCreated(uint256 indexed optionId);
    event RageMinted(uint256 indexed optionId);
    event OptionRefunded(uint256 indexed optionId);
    event ClaimReserved(address indexed wallet);
    event ClaimProcessed(address indexed wallet);
    
    // State and configuration functions
    function getState() external view returns (RageStructs.RbpState memory);
    function setStatus(uint256 status) external;
    function setConfigs(RageStructs.RbpConfig calldata newConfig) external;
    
    // Administrative functions
    function withdrawToken(address tokenAdr, uint256 amount) external;
    
    // View functions
    function getClaimWallets() external view returns (address[] memory);
    function getOption(uint256 optionId) external view returns (RageStructs.Option memory);
    function getClaim(address wallet) external view returns (RageStructs.Claim memory);
    function getViewState() external view returns (RageStructs.RbpViewState memory);
    
    // Asset calculation functions
    function getRageFromUsdc(uint256 usdcAmount) external view returns (uint256);
    function getAssetsFromRage(uint256 rageAmount) external view returns (uint256 hestia, uint256 circle);
    function getPendingAssets() external view returns (uint256 pendingHestia, uint256 pendingCircle);
    function getActiveAssetsUsdcValue() external view returns (uint256 totalValue);
    function getRawAssets() external view returns (uint256 rawHestia, uint256 rawCircle);
    function getActiveAssets() external view returns (uint256 activePhestia, uint256 activePcircle);
    function getBonusAssets() external view returns (uint256 bonusHestia, uint256 bonusCircle);
    function getRageUnderlying() external view returns (
        uint256 underlyingHestia, 
        uint256 underlyingCircle, 
        uint256 hestiaValue, 
        uint256 circleValue, 
        uint256 totalValue, 
        uint256 hestiaPercent, 
        uint256 circlePercent
    );
    function getPrice(uint256 amount) external view returns (uint256);
    function getFmv() external view returns (uint256);
    function getBackingPerShare() external view returns (uint256);
    function getInvestPercents() external view returns (uint256 percentHestia, uint256 percentCircle);
    
    // Investment functions
    function invest(uint256 usdcAmount, address referral) external;
    function investEth(address referral) external payable;
    receive() external payable;
    
    // Option functions
    function mintRage(uint256 optionId) external;
    function refund(uint256 optionId) external;
    
    // Claim functions
    function reserveClaim(uint256 rageAmount) external;
    function processClaim() external;
    
    // Overview functions
    function investOverview(address wallet, uint256 usdcAmount) external view returns (RageStructs.InvestOverview memory);
    function optionOverview(address wallet, uint256 optionId) external view returns (RageStructs.OptionOverview memory);
    function reserveClaimOverview(address wallet, uint256 rageAmount) external view returns (RageStructs.ReserveClaimOverview memory);
    function processClaimOverview(address wallet) external view returns (RageStructs.ClaimOverview memory);
}