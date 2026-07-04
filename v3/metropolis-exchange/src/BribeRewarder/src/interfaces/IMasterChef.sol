// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";

import {IMasterChefRewarder} from "./IMasterChefRewarder.sol";
import {IMetro} from "./IMetro.sol";
import {IVoter} from "./IVoter.sol";
import {Rewarder} from "../libraries/Rewarder.sol";
import {Amounts} from "../libraries/Amounts.sol";
import {IRewarderFactory} from "./IRewarderFactory.sol";

interface IMasterChef {
    error MasterChef__InvalidShares();
    error MasterChef__InvalidMetroPerSecond();
    error MasterChef__ZeroAddress();
    error MasterChef__NotMasterchefRewarder();
    error MasterChef__CannotRenounceOwnership();
    error MasterChef__MintFailed();
    error MasterChef__TrusteeNotSet();
    error MasterChef__NotTrustedCaller();

    struct Farm {
        Amounts.Parameter amounts;
        Rewarder.Parameter rewarder;
        IERC20 token;
        IMasterChefRewarder extraRewarder;
    }
    // bool depositOnBehalf; // true if v2 pool zap in should be possible
    // uint256 startTime;

    event PositionModified(uint256 indexed pid, address indexed account, int256 deltaAmount, uint256 metroReward);

    event MetroPerSecondSet(uint256 metroPerSecond);

    event FarmAdded(uint256 indexed pid, IERC20 indexed token);

    event ExtraRewarderSet(uint256 indexed pid, IMasterChefRewarder extraRewarder);

    event TreasurySet(address indexed treasury);

    event VoterSet(IVoter indexed newVoter);

    event TrusteeSet(address indexed trustee);

    event MintMetroSet(bool mintMetro);

    event OperatorUpdated(address indexed operator);

    function add(IERC20 token, IMasterChefRewarder extraRewarder) external;

    function claim(uint256[] memory pids) external;

    function deposit(uint256 pid, uint256 amount) external;

    function depositOnBehalf(uint256 pid, uint256 amount, address account) external;

    function emergencyWithdraw(uint256 pid) external;

    function getDeposit(uint256 pid, address account) external view returns (uint256);

    function getLastUpdateTimestamp(uint256 pid) external view returns (uint256);

    function getPendingRewards(address account, uint256[] memory pids)
        external
        view
        returns (uint256[] memory metroRewards, IERC20[] memory extraTokens, uint256[] memory extraRewards);

    function getExtraRewarder(uint256 pid) external view returns (IMasterChefRewarder);

    function getMetro() external view returns (IMetro);

    function getMetroPerSecond() external view returns (uint256);

    function getMetroPerSecondForPid(uint256 pid) external view returns (uint256);

    function getNumberOfFarms() external view returns (uint256);

    function getToken(uint256 pid) external view returns (IERC20);

    function getTotalDeposit(uint256 pid) external view returns (uint256);

    function getTreasury() external view returns (address);

    function getTreasuryShare() external view returns (uint256);

    function getRewarderFactory() external view returns (IRewarderFactory);

    function getLBHooksManager() external view returns (address);

    function getVoter() external view returns (IVoter);

    function setExtraRewarder(uint256 pid, IMasterChefRewarder extraRewarder) external;

    function setMetroPerSecond(uint96 metroPerSecond) external;

    function setTreasury(address treasury) external;

    function setVoter(IVoter voter) external;

    function setTrustee(address trustee) external;

    function updateAll(uint256[] calldata pids) external;

    function withdraw(uint256 pid, uint256 amount) external;
}
