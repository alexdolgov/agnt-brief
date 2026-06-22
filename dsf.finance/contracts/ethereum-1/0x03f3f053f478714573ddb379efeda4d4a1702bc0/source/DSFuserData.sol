//SPDX-License-Identifier: MIT

/**
 *⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 *⠀⠀⠀⠀⠈⢻⣿⠛⠻⢷⣄⠀⠀ ⣴⡟⠛⠛⣷⠀ ⠘⣿⡿⠛⠛⢿⡇⠀⠀⠀⠀
 *⠀⠀⠀⠀⠀⢸⣿⠀⠀ ⠈⣿⡄⠀⠿⣧⣄⡀ ⠉⠀⠀ ⣿⣧⣀⣀⡀⠀⠀⠀⠀⠀
 *⠀⠀⠀⠀⠀⢸⣿⠀⠀ ⢀⣿⠃ ⣀ ⠈⠉⠻⣷⡄⠀ ⣿⡟⠉⠉⠁⠀⠀⠀⠀⠀
 *⠀⠀⠀⠀⢠⣼⣿⣤⣴⠿⠋⠀ ⠀⢿⣦⣤⣴⡿⠁ ⢠⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 *
 *      - Defining Successful Future -
 *
 */
 
pragma solidity ^0.8.28;

interface IDSFLP {
    function totalHoldings() external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function defaultWithdrawPid() external view returns (uint256);
    function poolInfo(uint256 pid) external view returns (address strategy, uint256 startTime, uint256 lpShares);
}

interface IStrategyDSF {
    function calcWithdrawOneCoin(uint256 lpShares, uint128 tokenIndex) external view returns (uint256);
}

interface IDSFORACLE {
    function getCVXCRVHoldings() external view returns (
        uint256 amountIn_cvx,
        uint256 amountIn_crv,
        uint256 cvxEarningsUSDT,
        uint256 crvEarningsUSDT
    );
}

contract DSFuserData {
    uint256 public constant LP_RATIO_MULTIPLIER = 1e18;
    address public dsfLpContract;
    address public owner;

    struct OracleInfo {
        address oracleAddress;
        uint256 addedTime;
    }

    OracleInfo[] internal strategyOracles;
    
    event OracleAdded(uint256 indexed index, address indexed oracle, uint256 timestamp);
    event OracleRemoved(uint256 indexed index, address indexed oracle, uint256 timestamp);
    event DSFLPContractUpdated(address indexed newAddress);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not contract owner");
        _;
    }

    constructor(address _dsfLpContract) {
        require(_dsfLpContract != address(0), "DSF: Invalid DSF contract address");
        dsfLpContract = _dsfLpContract;
        owner = msg.sender;
    }

    function setDsfLpContract(address newAddress) external onlyOwner {
        require(newAddress != address(0), "DSF: Invalid DSF contract address");
        dsfLpContract = newAddress;
        emit DSFLPContractUpdated(newAddress);
    }

    function addStrategyOracle(address oracle) external onlyOwner {
        require(oracle != address(0), "Invalid oracle address");

        for (uint256 i = 0; i < strategyOracles.length; i++) {
            require(strategyOracles[i].oracleAddress != oracle, "Oracle already added");
        }

        strategyOracles.push(OracleInfo({ oracleAddress: oracle, addedTime: block.timestamp }));
        emit OracleAdded(strategyOracles.length - 1, oracle, block.timestamp);
    }

    function removeStrategyOracle(uint256 index) external onlyOwner {
        require(index < strategyOracles.length, "Index out of bounds");

        address removedOracle = strategyOracles[index].oracleAddress;

        strategyOracles[index] = strategyOracles[strategyOracles.length - 1];
        strategyOracles.pop();

        emit OracleRemoved(index, removedOracle, block.timestamp);
    }

    function getCurrentWithdrawPool() public view returns (address strategy, uint256 lpShares) {
        IDSFLP dsf = IDSFLP(dsfLpContract);
        uint256 pid = dsf.defaultWithdrawPid();
        (strategy, , lpShares) = dsf.poolInfo(pid);
        require(strategy != address(0), "DSF: No active strategy");
    }

    function getUserLpShare(address userAddress) public view returns (uint256 lpShareRatio, uint256 userBalance) {
        IDSFLP dsf = IDSFLP(dsfLpContract);
        uint256 totalSupply = dsf.totalSupply();
        userBalance = dsf.balanceOf(userAddress);
        require(totalSupply > 0, "DSF: Total supply is zero");
        lpShareRatio = calcLpRatioSafe(userBalance, totalSupply);
    }

    function getUserShareInStrategy(address userAddress) public view returns (uint256 userShare) {
        (, uint256 strategyLpShares) = getCurrentWithdrawPool();
        uint256 userBalance = IDSFLP(dsfLpContract).balanceOf(userAddress);
        userShare = calcLpRatioSafe(userBalance, strategyLpShares);
    }

    function getWithdrawalAmounts(address userAddress) public view returns (uint256[3] memory withdrawalAmounts) {
        (address strategy, ) = getCurrentWithdrawPool();
        IStrategyDSF strategyContract = IStrategyDSF(strategy);
        uint256 userShare = getUserShareInStrategy(userAddress);
        
        if (userShare == 0) {
            withdrawalAmounts[0] = 0;
            withdrawalAmounts[1] = 0;
            withdrawalAmounts[2] = 0;
            return withdrawalAmounts;
        }

        for (uint128 i = 0; i < 3; i++) {
            withdrawalAmounts[i] = strategyContract.calcWithdrawOneCoin(userShare, i);
        }
    }

    function getOracleEarnings(uint256 lpShareRatio) public view returns (
        uint256 amountIn_cvx,
        uint256 amountIn_crv,
        uint256 cvxEarningsUSDT,
        uint256 crvEarningsUSDT
    ) {
        if (strategyOracles.length == 0 || lpShareRatio == 0) {
            return (0, 0, 0, 0);
        }

        uint256 totalAmountIn_cvx;
        uint256 totalAmountIn_crv;
        uint256 totalCvxEarningsUSDT;
        uint256 totalCrvEarningsUSDT;

        for (uint256 i = 0; i < strategyOracles.length; i++) {
            IDSFORACLE oracle = IDSFORACLE(strategyOracles[i].oracleAddress);
            (
                uint256 oracleAmountIn_cvx,
                uint256 oracleAmountIn_crv,
                uint256 oracleCvxEarningsUSDT,
                uint256 oracleCrvEarningsUSDT
            ) = oracle.getCVXCRVHoldings();

            totalAmountIn_cvx += oracleAmountIn_cvx;
            totalAmountIn_crv += oracleAmountIn_crv;
            totalCvxEarningsUSDT += oracleCvxEarningsUSDT;
            totalCrvEarningsUSDT += oracleCrvEarningsUSDT;
        }

        amountIn_cvx = (totalAmountIn_cvx * lpShareRatio) / LP_RATIO_MULTIPLIER;
        amountIn_crv = (totalAmountIn_crv * lpShareRatio) / LP_RATIO_MULTIPLIER;
        cvxEarningsUSDT = (totalCvxEarningsUSDT * lpShareRatio) / LP_RATIO_MULTIPLIER;
        crvEarningsUSDT = (totalCrvEarningsUSDT * lpShareRatio) / LP_RATIO_MULTIPLIER;
    }

    function getUserData(address userAddress) external view returns (
        uint256 lpShareRatio,
        uint256 userBalance,
        uint256 userShare,
        uint256[3] memory withdrawalAmounts,
        uint256 amountIn_cvx,
        uint256 amountIn_crv,
        uint256 cvxEarningsUSDT,
        uint256 crvEarningsUSDT
    ) {
        (lpShareRatio, userBalance) = getUserLpShare(userAddress);
        userShare = getUserShareInStrategy(userAddress);
        withdrawalAmounts = getWithdrawalAmounts(userAddress);
        (amountIn_cvx, amountIn_crv, cvxEarningsUSDT, crvEarningsUSDT) = getOracleEarnings(lpShareRatio);
    }

    function calcLpRatioSafe(uint256 userLpShares, uint256 totalLpShares) public pure returns (uint256 lpShareRatio) {
        if (userLpShares == 0 || totalLpShares == 0) return 0;

        lpShareRatio = (userLpShares * LP_RATIO_MULTIPLIER) / totalLpShares;
        require(lpShareRatio <= LP_RATIO_MULTIPLIER, "DSF: Wrong out lp Ratio");
    }

    function getAllOracles() external view returns (OracleInfo[] memory) {
        return strategyOracles;
    }

    function getOraclesCount() external view returns (uint256) {
        return strategyOracles.length;
    }

    function getOracleByIndex(uint256 index) external view returns (OracleInfo memory) {
        require(index < strategyOracles.length, "Index out of bounds");
        return strategyOracles[index];
    }
}