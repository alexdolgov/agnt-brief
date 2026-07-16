// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/**
 *⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 *⠀⠀⠀⠀⠈⢻⣿⠛⠻⢷⣄⠀⠀ ⣴⡟⠛⠛⣷⠀ ⠘⣿⡿⠛⠛⢿⡇⠀⠀⠀⠀
 *⠀⠀⠀⠀⠀⢸⣿⠀⠀ ⠈⣿⡄⠀⠿⣧⣄⡀ ⠉⠀⠀ ⣿⣧⣀⣀⡀⠀⠀⠀⠀⠀
 *⠀⠀⠀⠀⠀⢸⣿⠀⠀ ⢀⣿⠃ ⣀ ⠈⠉⠻⣷⡄⠀ ⣿⡟⠉⠉⠁⠀⠀⠀⠀⠀
 *⠀⠀⠀⠀⢠⣼⣿⣤⣴⠿⠋⠀ ⠀⢿⣦⣤⣴⡿⠁ ⢠⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 *
 *          - Defining Successful Future -
 *
 * @title  DSFFutureIncomeAggregator
 * @author Andrei Averin — CTO dsf.finance
 * @notice
 *  Lightweight aggregator of future income for the entire DSF protocol, denominated in USDT.
 *
 *  Each attached oracle is expected to implement:
 *
 *      function getCVXCRVHoldings() external view returns (
 *          uint256 amountIn_cvx,
 *          uint256 amountIn_crv,
 *          uint256 cvxEarningsUSDT,
 *          uint256 crvEarningsUSDT
 *      );
 *
 *  and return earnings in USDT decimals (typically 1e6) via cvxEarningsUSDT and crvEarningsUSDT.
 *
 *  This contract:
 *  - stores a list of such oracles;
 *  - exposes the total future income for all DSF via futureIncome();
 *  - provides minimal onlyOwner controls over the oracle list.
 */

/// @notice Public interface for consumers of aggregated future income.
interface IFutureIncome {
    /**
     * @notice Returns future income in USDT (in USDT decimals, typically 1e6).
     */
    function futureIncome() external view returns (uint256);
}

/// @notice Internal interface for DSF CVX/CRV earnings oracles (e.g. DSF_CVXCRVHoldingsMIM3crv).
interface IDSFCvxCrvOracle {
    function getCVXCRVHoldings()
        external
        view
        returns (
            uint256 amountIn_cvx,
            uint256 amountIn_crv,
            uint256 cvxEarningsUSDT,
            uint256 crvEarningsUSDT
        );
}

/**
 * @title  DSFFutureIncomeAggregator
 * @notice Aggregates future income across all DSF strategy oracles.
 * @dev
 *  The contract itself implements IFutureIncome so it can be used
 *  as another "oracle" in other systems.
 */
contract DSFFutureIncomeAggregator is IFutureIncome {
    /// @notice Contract owner (typically DSF multi-sig).
    address public owner;

    /// @notice Information about each oracle.
    struct OracleInfo {
        address oracleAddress;  // oracle contract address (implements getCVXCRVHoldings)
        uint256 addedTime;      // timestamp when the oracle was added
    }

    /// @dev Internal list of future income oracles.
    OracleInfo[] internal futureOracles;

    /*──────────────────────────────────────────────────────────
                            Events
    ──────────────────────────────────────────────────────────*/

    event OracleAdded(uint256 indexed index, address indexed oracle, uint256 timestamp);
    event OracleRemoved(uint256 indexed index, address indexed oracle, uint256 timestamp);
    event OwnerUpdated(address indexed oldOwner, address indexed newOwner);

    /*──────────────────────────────────────────────────────────
                            Modifiers
    ──────────────────────────────────────────────────────────*/

    modifier onlyOwner() {
        require(msg.sender == owner, "DSF: not owner");
        _;
    }

    /*──────────────────────────────────────────────────────────
                            Constructor
    ──────────────────────────────────────────────────────────*/

    constructor() {
        owner = msg.sender;
        emit OwnerUpdated(address(0), msg.sender);
    }

    /*──────────────────────────────────────────────────────────
                        Owner management
    ──────────────────────────────────────────────────────────*/

    /**
     * @notice Transfers contract ownership.
     * @param  newOwner Address of the new owner.
     */
    function transferOwnership(address newOwner) external onlyOwner {
        require(newOwner != address(0), "DSF: zero owner");
        emit OwnerUpdated(owner, newOwner);
        owner = newOwner;
    }

    /*──────────────────────────────────────────────────────────
                        Oracle management
    ──────────────────────────────────────────────────────────*/

    /**
     * @notice Adds a new future income oracle.
     * @param  oracle Address of a contract implementing getCVXCRVHoldings().
     */
    function addFutureOracle(address oracle) external onlyOwner {
        require(oracle != address(0), "DSF: zero oracle");

        // Prevent duplicates.
        for (uint256 i = 0; i < futureOracles.length; i++) {
            require(futureOracles[i].oracleAddress != oracle, "DSF: oracle exists");
        }

        futureOracles.push(
            OracleInfo({
                oracleAddress: oracle,
                addedTime: block.timestamp
            })
        );

        emit OracleAdded(futureOracles.length - 1, oracle, block.timestamp);
    }

    /**
     * @notice Removes an oracle by index.
     * @dev    Uses swap & pop: index is replaced by the last element.
     * @param  index Index of the oracle to remove.
     */
    function removeFutureOracle(uint256 index) external onlyOwner {
        require(index < futureOracles.length, "DSF: index oob");

        address removed = futureOracles[index].oracleAddress;

        uint256 lastIdx = futureOracles.length - 1;
        if (index != lastIdx) {
            futureOracles[index] = futureOracles[lastIdx];
        }

        futureOracles.pop();

        emit OracleRemoved(index, removed, block.timestamp);
    }

    /*──────────────────────────────────────────────────────────
                        Core logic
    ──────────────────────────────────────────────────────────*/

    /**
     * @notice Total future income of the entire DSF protocol in USDT.
     * @dev
     *  IFutureIncome implementation.
     *  For each oracle:
     *    - calls getCVXCRVHoldings();
     *    - takes cvxEarningsUSDT + crvEarningsUSDT;
     *    - sums them up.
     *
     *  Assumes each oracle returns earnings in the same decimals
     *  (USDT, 1e6).
     *
     * @return totalFutureIncomeUSDT Total future income in USDT decimals.
     */
    function futureIncome() external view override returns (uint256 totalFutureIncomeUSDT) {
        uint256 len = futureOracles.length;
        for (uint256 i = 0; i < len; i++) {
            (
                ,
                ,
                uint256 cvxEarningsUSDT,
                uint256 crvEarningsUSDT
            ) = IDSFCvxCrvOracle(futureOracles[i].oracleAddress).getCVXCRVHoldings();

            totalFutureIncomeUSDT += cvxEarningsUSDT + crvEarningsUSDT;
        }
    }

    /*──────────────────────────────────────────────────────────
                        Helper getters
    ──────────────────────────────────────────────────────────*/

    /**
     * @notice Returns all oracle records.
     */
    function getAllOracles() external view returns (OracleInfo[] memory) {
        return futureOracles;
    }

    /**
     * @notice Returns the number of added oracles.
     */
    function getOraclesCount() external view returns (uint256) {
        return futureOracles.length;
    }

    /**
     * @notice Returns oracle info by index.
     * @param  index Index of the oracle.
     */
    function getOracleByIndex(uint256 index) external view returns (OracleInfo memory) {
        require(index < futureOracles.length, "DSF: index oob");
        return futureOracles[index];
    }
}
