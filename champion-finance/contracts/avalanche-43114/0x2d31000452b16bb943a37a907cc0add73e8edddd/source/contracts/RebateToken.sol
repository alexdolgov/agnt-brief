// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "./owner/Operator.sol";
import "./interfaces/ITreasury.sol";
import "./interfaces/IUniswapV2Pair.sol";
import "./interfaces/IOracle.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./lib/SafeMath.sol";

contract RebateToken is Operator {
    using SafeMath for uint256;

    struct Asset {
        bool isAdded;
        address oracle;
    }

    struct VestingSchedule {
        uint256 amount;
        uint256 period;
        uint256 end;
        uint256 claimed;
        uint256 lastClaimed;
    }

    struct VestingConfig {
        bool enable;
        uint256 percent;
    }

    IERC20 public MainToken;
    IOracle public MainTokenOracle;
    mapping (uint256 => VestingConfig) public vestingTimeConfig;
    mapping (address => Asset) public assets;
    mapping (address => VestingSchedule) public vesting;

    bool public isPause = false;
    uint256 public totalVested = 0;
    // mainet
    address public POL = 0x409968A6E6cb006E8919de46A894138C43Ee1D22;

    // testnet
    // address public constant USDC = 0x4D151719e3aeBc7bf0A39A82Ad6F6C99c84049c2;
    // mainet
    address public constant USDC = 0xB97EF9Ef8734C71904D8002F8b6Bc66Dd9c48a6E;
    
    /*
     * ---------
     * MODIFIERS
     * ---------
     */
    
    // Only allow a function to be called with a bondable asset
    modifier onlyAsset(address token) {
        require(assets[token].isAdded, "RebateToken: token is not a bondable asset");
        _;
    }

    /*
     * ------------------
     * EXTERNAL FUNCTIONS
     * ------------------
     */

    // Initialize parameters
    constructor(address mainToken, address mainTokenOracle) {
        MainToken = IERC20(mainToken);
        MainTokenOracle = IOracle(mainTokenOracle);
        // keep support other vesting config
        vestingTimeConfig[0].enable = true;
        vestingTimeConfig[0].percent = 0;
    }

    // Bond asset for discounted MainToken at bond rate
    function bond(address token, uint256 amount, uint256 bondVestingInDays) external onlyAsset(token) {
        require(vestingTimeConfig[bondVestingInDays].enable, "RebateToken: invalid vesting time");
        require(amount > 0, "RebateToken: invalid bond amount");
        require(shouldOpenBond(), "RebateToken: the rebate is not open");
        uint256 bondVesting = bondVestingInDays * 24 * 60 * 60;
        if (bondVestingInDays == 0) {// support incase return reward directly
            bondVesting = 1;
        }
        _updatePrice(token);
        uint256 mainTokenAmount = getMainTokenReturn(token, amount, bondVestingInDays);
        require(mainTokenAmount <= MainToken.balanceOf(address(this)) - totalVested, "RebateToken: insufficient mainToken balance");
        
        IERC20(token).transferFrom(msg.sender, address(this), amount);
        _claimVested(msg.sender);

        uint256 newEnd = block.timestamp + bondVesting;
        VestingSchedule storage schedule = vesting[msg.sender];
        schedule.amount = schedule.amount - schedule.claimed + mainTokenAmount;
        schedule.period = schedule.end > newEnd ? schedule.end - block.timestamp : bondVesting;
        schedule.end = schedule.end > newEnd ? schedule.end : newEnd;
        schedule.claimed = 0;
        schedule.lastClaimed = block.timestamp;
        totalVested += mainTokenAmount;
    }

    // Claim available MainToken rewards from bonding
    function claimRewards() external {
        _claimVested(msg.sender);
    }

    /*
     * --------------------
     * RESTRICTED FUNCTIONS
     * --------------------
     */
    
    // Set main token
    function setMainToken(address mainToken) external onlyOperator {
        MainToken = IERC20(mainToken);
    }

    // Set main oracle
    function setMainTokenOracle(address oracle) external onlyOperator {
        MainTokenOracle = IOracle(oracle);
    }

    // set vesting config
    function setVestingConfig(uint256 dayKey, uint256 percent, bool enable) external onlyOperator {
        require(dayKey >= 0 && dayKey <= 10, "day range 0-10");
        require(percent >= 0 && percent <= 100, "percent range 0-100");
        vestingTimeConfig[dayKey].enable = enable;
        vestingTimeConfig[dayKey].percent = percent;
    }

    // Set bonding parameters of token
    function setAsset(
        address token,
        bool isAdded,
        address oracle
    ) external onlyOperator {
        assets[token].isAdded = isAdded;
        assets[token].oracle = oracle;
    }

    // set pause state
    function setPause(bool _isPause) external onlyOperator {
        isPause = _isPause;
    }
    
    // set pol address
    function setPolAddress(address _pol) external onlyOperator {
        POL = _pol;
    }

    /*
     * ------------------
     * INTERNAL FUNCTIONS
     * ------------------
     */
    function _updatePrice(address token) internal {
        Asset memory asset = assets[token];
        if (token != USDC) {
            IOracle Oracle = IOracle(asset.oracle);
            try Oracle.update() {} catch {
                revert("RebateToken: failed to update price from the oracle");
            }
        }

        try MainTokenOracle.update() {} catch {
            revert("RebateToken: failed to update price from the oracle");
        }
    }

    function _claimVested(address account) internal {
        VestingSchedule storage schedule = vesting[account];
        if (schedule.amount == 0 || schedule.amount == schedule.claimed) return;
        if (block.timestamp <= schedule.lastClaimed || schedule.lastClaimed >= schedule.end) return;

        uint256 duration = (block.timestamp > schedule.end ? schedule.end : block.timestamp) - schedule.lastClaimed;
        uint256 claimable = schedule.amount * duration / schedule.period;
        if (claimable == 0) return;

        schedule.claimed += claimable;
        schedule.lastClaimed = block.timestamp > schedule.end ? schedule.end : block.timestamp;
        totalVested -= claimable;
        MainToken.transfer(account, claimable);
    }

    /*
     * --------------
     * VIEW FUNCTIONS
     * --------------
     */
    function shouldOpenBond() public view returns (bool) {
        return isPause == false;
    }

    // Calculate MainToken return of bonding amount of token
    function getMainTokenReturn(address token, uint256 amount, uint256 bondVestingInDays) public view onlyAsset(token) returns (uint256) {
        uint256 mainTokenPrice = getMainTokenPrice();
        uint256 tokenPrice = getTokenPrice(token);
        uint256 discount = vestingTimeConfig[bondVestingInDays].percent;

        return (amount * tokenPrice / mainTokenPrice) * (100 + discount) / 100;
    }

    // Get MainToken price from Oracle
    function getMainTokenPrice() public view returns (uint256) {
        return MainTokenOracle.consult(address(MainToken), 1e18);
    }

    // Get token price from Oracle
    function getTokenPrice(address token) public view onlyAsset(token) returns (uint256) {
        if (token == USDC) {// base token
            return 1e18;
        }
        Asset memory asset = assets[token];
        IOracle Oracle = IOracle(asset.oracle);
        return Oracle.consult(token, 1e18);
    }

    // Get claimable vested MainToken for account
    function claimableMainToken(address account) external view returns (uint256) {
        VestingSchedule memory schedule = vesting[account];
        if (block.timestamp <= schedule.lastClaimed || schedule.lastClaimed >= schedule.end) return 0;
        uint256 duration = (block.timestamp > schedule.end ? schedule.end : block.timestamp) - schedule.lastClaimed;
        return schedule.amount * duration / schedule.period;
    }

    function emergencyWithdraw(IERC20 token, uint256 amnt) external onlyOperator {
        token.transfer(POL, amnt);
    }
}