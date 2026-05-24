//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.2;

import {EtherVault} from "../EtherVault.sol";

interface IFeeManager {
    function gateway() external view returns (address);
    function feeOracle() external view returns (address);
    function feeDistributor() external view returns (address);
    function sendFeeGas() external view returns (uint256);
    function postClaimFeeGas() external view returns (uint256);
    function vaults(uint256) external view returns (EtherVault);
    function prices(uint256) external view returns (uint256);
    function totalFeeCreditsForPathId(address, bytes32) external view returns (uint256);
    function feesClaimedFromPathId(address, bytes32) external view returns (uint256);

    function createFeeVaultIfNeeded(uint256 chainId) external;
    function collectSendFee(uint256 chainId) external payable returns (uint256 fee);
    function collectPostClaimFee(uint256 chainId) external payable returns (uint256 fee);
    function creditSendFee(bytes32 pathId, address recipient) external;

    function distributeClaimedFees(
        bytes32 pathId,
        uint256 counterpartChainId,
        address account,
        uint256 totalFees
    )
        external;

    function distributeExcessFees(
        uint256 chainId,
        address[] memory recipients,
        uint256[] memory amounts
    )
        external;

    function getSendFee(uint256 chainId) external view returns (uint256);
    function getPostClaimFee() external view returns (uint256);
    function getRemoveFee() external view returns (uint256);
    function getFee(uint256 chainId, uint256 gas) external view returns (uint256);
    function getFeeVault(uint256 chainId) external view returns (address);
    function setFeePrice(uint256 chainId, uint256 feePrice) external;
    function setFeePrices(uint256[] calldata chainIds, uint256[] calldata _prices) external;
    function setSendFeeGas(uint256 _sendFeeGas) external;
    function setPostClaimFeeGas(uint256 _postClaimFeeGas) external;
    function setGateway(address _gateway) external;
    function setFeeOracle(address newFeeOracle) external;
    function setFeeDistributor(address newFeeDistributor) external;
}