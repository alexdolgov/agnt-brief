// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface ICrossConfig {
    function getCrossChainAgentFee(
        string calldata symbol, uint256 srcChainID, uint256 destChainID
    ) external view returns (uint256 numerator, uint256 denominator, uint256 fixedFee, uint256 minFeeLimit, uint256 maxFeeLimit);
}

interface IBridge {
    struct GetFeesParam {
        uint256 srcChainID;
        uint256 destChainID;
    }

    struct GetFeesReturn {
        uint256 contractFee;
        uint256 agentFee;
    }

    function getFee(
        GetFeesParam calldata param
    ) external view returns (GetFeesReturn memory fee);

    function getTokenPairFee(uint256 tokenPairID) external view returns(uint256 contractFee);
}

interface ITokenManager {
    function getAncestorInfo(uint id) external view returns (bytes memory account, string memory name, string memory symbol, uint8 decimals, uint chainId);
}

interface IDecimals {
    function decimals() external view returns (uint8);
}

interface IDiscount {
    function discount(address user) external view returns (uint256 discountE18);
}

contract FeeHelper {
    struct ServiceFeeInput {
        uint256 fromChainId;
        uint256 toChainId;
        uint256 tokenPairId;
        uint256 decimals;
        uint256 toAmount;
        bytes toAddress;
    }

    address public bridge;
    address public crossConfig;
    address public tokenManager;
    address public discountSC;

    constructor(address _bridge, address _crossConfig, address _tokenManager, address _discountSC) {
        bridge = _bridge;
        crossConfig = _crossConfig;
        tokenManager = _tokenManager;
        discountSC = _discountSC;
    }

    function getNetworkFee(uint fromChainId, uint toChainId, uint tokenPairId) public view returns (uint256) {
        IBridge.GetFeesParam memory param = IBridge.GetFeesParam(fromChainId, toChainId);
        IBridge.GetFeesReturn memory fee = IBridge(bridge).getFee(param);
        uint tokenPairFee = IBridge(bridge).getTokenPairFee(tokenPairId);
        return tokenPairFee > 0 ? tokenPairFee : fee.contractFee;
    }

    function getServiceFee(ServiceFeeInput memory params) public view returns (uint256 serviceFee) {
        if (crossConfig == address(0)) {
            return 0;
        }

        (,,string memory symbol,,) = ITokenManager(tokenManager).getAncestorInfo(params.tokenPairId);

        {
            (uint256 numerator, uint256 denominator, uint256 fixedFee, uint256 minFeeLimit, uint256 maxFeeLimit) = ICrossConfig(crossConfig).getCrossChainAgentFee(symbol, params.fromChainId, params.toChainId);
            serviceFee = calculateFee(numerator, denominator, fixedFee, minFeeLimit, maxFeeLimit, params.toAmount, params.decimals);
        }
        
        serviceFee = discount(bytesToAddress(params.toAddress), serviceFee);
    }

    function calculateFee(
        uint256 numerator,
        uint256 denominator,
        uint256 fixedFee,
        uint256 minFeeLimit,
        uint256 maxFeeLimit,
        uint256 amount,
        uint256 decimals
    ) public pure returns (uint256) {
        // Convert amount to 1e18 unit
        uint256 amountIn18 = amount * 1e18 / (10 ** decimals);
        // Calculate the dynamic fee
        uint256 dynamicFee = (amountIn18 * numerator) / denominator;

        uint256 totalFeeIn18 = dynamicFee;
        if (totalFeeIn18 == 0 && fixedFee > 0) {
            totalFeeIn18 = fixedFee;
        } else {
            // Ensure the total fee is within the limits
            if (totalFeeIn18 < minFeeLimit) {
                totalFeeIn18 = minFeeLimit;
            } else if (totalFeeIn18 > maxFeeLimit) {
                totalFeeIn18 = maxFeeLimit;
            }
        }

        // Convert total fee back to original decimals
        uint256 totalFee = totalFeeIn18 * (10 ** decimals) / 1e18;
        return totalFee;
    }

    function discount(address user, uint256 amount) internal view returns (uint256 amountAfterDiscount) {
        if (discountSC == address(0)) {
            return amount;
        }
        uint _discount = IDiscount(discountSC).discount(user);
        return amount * _discount / 1 ether;
    }

    function bytesToAddress(bytes memory b) public pure returns (address) {
        require(b.length >= 20, "Invalid address length");

        address addr;
        assembly {
            addr := mload(add(b, 20))
        }
        return addr;
    }

}