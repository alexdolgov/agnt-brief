pragma solidity 0.8.24;

import { Ownable } from "contracts/access/Ownable.sol";

interface IStableSwap {
    function get_dy(int128 i, int128 j, uint256 dx) external view returns (uint256);

    function fee() external view returns (uint256);
}

interface IEACAggregatorProxy {
    function latestAnswer() external view returns (int256);
}

interface ISpotOracle {
    function getPrice() external view returns (uint256);
}

contract SpotOracleAggregatorUltra is Ownable {
    ISpotOracle[] public oracles;

    constructor(ISpotOracle[] memory _oracles) {
        oracles = _oracles;
    }

    /**
        @notice Get the spot price of ULTRA, expressed as a whole number with a precision of 1e18
        @dev THIS ORACLE IS EASILY MANIPULATED! IT IS NOT ACCEPTABLE FOR ON-CHAIN USE!
     */
    function getPrice() external view returns (uint256) {
        uint total;
        for (uint i = 0; i < oracles.length; i++) {
            total += oracles[i].getPrice();
        }
        return total / oracles.length;
    }

    function oracleCount() external view returns (uint256) {
        return oracles.length;
    }

    function addOracle(ISpotOracle oracle) external onlyOwner {
        uint length = oracles.length;
        for (uint i = 0; i < length; i++) {
            if (oracles[i] == oracle) revert("Oracle already added");
        }
        oracles.push(oracle);
    }

    function removeOracle(ISpotOracle oracle) external onlyOwner {
        ISpotOracle last = oracles[oracles.length - 1];
        oracles.pop();
        if (last == oracle) return;
        uint length = oracles.length;
        for (uint i = 0; i < length; i++) {
            if (oracles[i] == oracle) {
                oracles[i] = last;
                return;
            }
        }
        revert("Oracle not found");
    }
}

contract SpotOracle {
    IStableSwap public constant MKULTRA = IStableSwap(0xC236BAE6e35b3Fb7335e1c35CA0862Ce92bd5DE3);
    SpotOracle public constant MKUSD_USD = SpotOracle(0xaDCDaAF8F74AD19C46710492389AA846429bA14b);

    /**
        @notice Get the spot price of mkUSD, expressed as a whole number with a precision of 1e18
        @dev THIS ORACLE IS EASILY MANIPULATED! IT IS NOT ACCEPTABLE FOR ON-CHAIN USE!
     */
    function getPrice() external view returns (uint256) {
        // amount received from swaping 1 ULTRA -> mkUSD, normalized to 1e18
        uint256 dy = MKULTRA.get_dy(1, 0, 1e18);

        // mkusd/ultra fee, normalized to 1e18
        uint256 fee = (MKULTRA.fee() + 1e10) * 1e8;

        // mkusd/usc price
        uint256 usdc = MKUSD_USD.getPrice();

        return (dy * fee * usdc) / 1e36;
    }
}
