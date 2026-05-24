// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "../process/AccountProcess.sol";
import "../process/RebalanceProcess.sol";
import "../process/OracleProcess.sol";
import "../storage/RebalanceSwap.sol";

interface ISwap {
    enum SwapType {
        NONE,
        ONE_INCH
    }

    struct PreSwapToLiabilityParam {
        address account;
        address liabilityToken;
        uint256 liabilityAmount;
        address collateralToken;
        uint256 collateralAmount;
    }

    struct CancelSwapToLiabilityParam {
        address collateralToken;
        uint256 collateralAmount;
    }

    struct SwapToPayLiabilityParam {
        address account;
        address liabilityToken;
        uint256 liabilityAmount;
        uint256 minPayLiabilityAmount;
        address collateralToken;
        uint256 collateralAmount;
        SwapType swapType;
        bytes swapData;
    }

    struct RebalanceSwapParam {
        uint256 requestId;
        uint256 minToAmount;
        SwapType swapType;
        bytes swapData;
    }

    function getRebalanceSwapRequest(uint256 requestId) external view returns (RebalanceSwap.Request memory request);

    function preProcessRebalanceSwap(uint256 requestId) external;

    function rebalanceSwap(RebalanceSwapParam calldata param) external;

    function cancelRebalanceSwap(uint256 requestId) external;

    function preProcessSwapToLiabilitySwap(PreSwapToLiabilityParam[] calldata params) external;

    function cancelSwapToLiabilitySwap(CancelSwapToLiabilityParam[] calldata params) external;

    function swapToPayLiability(SwapToPayLiabilityParam[] calldata params) external;

    function transfer(address token, address to, uint256 amount) external;
}
