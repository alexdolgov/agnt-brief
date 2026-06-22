// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IyContract {
    function totalHoldings() external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
}

contract RatioContract {
    uint256 constant LP_RATIO_MULTIPLIER = 1e18;
    address public yContractAddress;

    constructor(address _yContractAddress) {
        require(_yContractAddress != address(0), "DSF: Invalid contract address");
        yContractAddress = _yContractAddress;
    }

    function setyContractAddress(address newAddress) external {
        yContractAddress = newAddress;
    }

    function calculateLpRatio(address userAddress) external view returns (uint256 lpShareRatio) {
        IyContract yContract = IyContract(yContractAddress);

        //uint256 totalHoldings = yContract.totalHoldings();
        uint256 totalSupply = yContract.totalSupply();
        uint256 userBalance = yContract.balanceOf(userAddress);

        require(totalSupply > 0, 'DSF: Total supply is zero');

        lpShareRatio = calcLpRatioSafe(userBalance, totalSupply);
    }

    function calcLpRatioSafe(uint256 outLpShares, uint256 strategyLpShares)
        public
        pure
        returns (uint256 lpShareRatio)
    {
        lpShareRatio = (outLpShares * LP_RATIO_MULTIPLIER) / strategyLpShares;
        require(
            lpShareRatio > 0 && lpShareRatio <= LP_RATIO_MULTIPLIER,
            'DSF: Wrong out lp Ratio'
        );
    }
}