pragma solidity ^0.5.17;

import "../../openzeppelin-contracts-2.5.1/contracts/token/ERC20/IERC20.sol";
import "../../openzeppelin-contracts-2.5.1/contracts/math/SafeMath.sol";
import "../../openzeppelin-contracts-2.5.1/contracts/math/Math.sol";
import "../../openzeppelin-contracts-2.5.1/contracts/utils/Address.sol";
import "../../openzeppelin-contracts-2.5.1/contracts/token/ERC20/SafeERC20.sol";

import "../../interfaces/yearn/IController.sol";
import "../../interfaces/yearn/Token.sol";

contract StrategyACryptoSDsg {
    using SafeERC20 for IERC20;
    using Address for address;
    using SafeMath for uint256;
    using Math for uint256;

    uint256 constant MAX_UINT =
        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;

    address public constant reward =
        address(0x9A78649501BbAAC285Ea4187299471B7ad4ABD35);
    address public constant router =
        address(0xE9C7650b97712C0Ec958FF270FBF4189fB99C071);
    address public constant farm =
        address(0x5acc2D6F034eC3e05eA9A8085c847662F3774CAF);

    address public want;
    address public tokenA;
    address public tokenB;
    uint256 public farmPid;
    address[] public rewardToTokenAPath;

    address public governance;
    address public controller;
    address public strategist;

    uint256 public performanceFee = 2450;
    uint256 public strategistReward = 50;
    uint256 public withdrawalFee = 10;
    uint256 public harvesterReward = 30;
    uint256 public constant FEE_DENOMINATOR = 10000;

    bool public paused;

    constructor(
        address _governance,
        address _strategist,
        address _controller,
        address _want,
        address _tokenA,
        address _tokenB,
        uint256 _farmPid,
        address[] memory _rewardToTokenAPath
    ) public {
        want = _want;
        tokenA = _tokenA;
        tokenB = _tokenB;
        farmPid = _farmPid;
        rewardToTokenAPath = _rewardToTokenAPath;

        governance = _governance;
        strategist = _strategist;
        controller = _controller;

        IERC20(want).approve(farm, MAX_UINT);
        IERC20(reward).approve(router, MAX_UINT);
        IERC20(tokenA).approve(router, MAX_UINT);
        IERC20(tokenB).approve(router, MAX_UINT);
    }

    function getName() external pure returns (string memory) {
        return "StrategyACryptoSDsg";
    }

    function deposit() public {
        _stakeWant();
    }

    function _stakeWant() internal {
        if (paused) return;
        uint256 _want = IERC20(want).balanceOf(address(this));
        if (_want > 0) {
            IFarm(farm).deposit(farmPid, _want);
        }
    }

    // Controller only function for creating additional rewards from dust
    function withdraw(IERC20 _asset) external returns (uint256 balance) {
        require(msg.sender == controller, "!controller");
        require(want != address(_asset), "want");
        balance = _asset.balanceOf(address(this));
        _asset.safeTransfer(controller, balance);
    }

    // Withdraw partial funds, normally used with a vault withdrawal
    function withdraw(uint256 _amount) external {
        require(msg.sender == controller, "!controller");
        uint256 _balance = IERC20(want).balanceOf(address(this));
        if (_balance < _amount) {
            _amount = _withdrawSome(_amount.sub(_balance));
            _amount = _amount.add(_balance);
        }

        uint256 _fee = _amount.mul(withdrawalFee).div(FEE_DENOMINATOR);
        IERC20(want).safeTransfer(IController(controller).rewards(), _fee);
        address _vault = IController(controller).vaults(address(want));
        require(_vault != address(0), "!vault"); // additional protection so we don't burn the funds
        IERC20(want).safeTransfer(_vault, _amount.sub(_fee));
    }

    function _withdrawSome(uint256 _amount) internal returns (uint256) {
        IFarm(farm).withdraw(farmPid, _amount);

        return _amount;
    }

    // Withdraw all funds, normally used when migrating strategies
    function withdrawAll() external returns (uint256 balance) {
        require(
            msg.sender == controller ||
                msg.sender == strategist ||
                msg.sender == governance,
            "!authorized"
        );
        _withdrawAll();

        balance = IERC20(want).balanceOf(address(this));

        address _vault = IController(controller).vaults(address(want));
        require(_vault != address(0), "!vault"); // additional protection so we don't burn the funds
        IERC20(want).safeTransfer(_vault, balance);

        //waste not - send dust tokenA to rewards
        IERC20(tokenA).safeTransfer(
            IController(controller).rewards(),
            IERC20(tokenA).balanceOf(address(this))
        );
    }

    function _withdrawAll() internal {
        IFarm(farm).emergencyWithdraw(farmPid);
    }

    function _convertRewardToWant() internal {
        if (reward != tokenA) {
            uint256 _reward = IERC20(reward).balanceOf(address(this));
            if (_reward > 0) {
                IRouter(router)
                    .swapExactTokensForTokensSupportingFeeOnTransferTokens(
                        _reward,
                        uint256(0),
                        rewardToTokenAPath,
                        address(this),
                        now.add(1800)
                    );
            }
        }
        uint256 _tokenA = IERC20(tokenA).balanceOf(address(this));
        if (_tokenA > 0) {
            address[] memory path = new address[](2);
            path[0] = tokenA;
            path[1] = tokenB;

            IRouter(router)
                .swapExactTokensForTokensSupportingFeeOnTransferTokens(
                    _tokenA.div(2),
                    uint256(0),
                    path,
                    address(this),
                    now.add(1800)
                );

            //add liquidity
            _tokenA = IERC20(tokenA).balanceOf(address(this));
            uint256 _tokenB = IERC20(tokenB).balanceOf(address(this));

            IRouter(router).addLiquidity(
                tokenA, // address tokenA,
                tokenB, // address tokenB,
                _tokenA, // uint amountADesired,
                _tokenB, // uint amountBDesired,
                0, // uint amountAMin,
                0, // uint amountBMin,
                address(this), // address to,
                now.add(1800) // uint deadline
            );
        }
    }

    function harvest() public returns (uint256 harvesterRewarded) {
        require(msg.sender == tx.origin, "not eoa");

        IFarm(farm).harvest(farmPid);

        uint256 _reward = IERC20(reward).balanceOf(address(this));
        uint256 _harvesterReward;
        if (_reward > 0) {
            uint256 _fee = _reward.mul(performanceFee).div(FEE_DENOMINATOR);
            uint256 _strategistReward = _reward.mul(strategistReward).div(
                FEE_DENOMINATOR
            );
            _harvesterReward = _reward.mul(harvesterReward).div(
                FEE_DENOMINATOR
            );
            IERC20(reward).safeTransfer(
                IController(controller).rewards(),
                _fee
            );
            IERC20(reward).safeTransfer(strategist, _strategistReward);
            IERC20(reward).safeTransfer(msg.sender, _harvesterReward);
        }

        _convertRewardToWant();
        _stakeWant();

        return _harvesterReward;
    }

    function balanceOf() public view returns (uint256) {
        return balanceOfWant().add(balanceOfStakedWant());
    }

    function balanceOfWant() public view returns (uint256) {
        return IERC20(want).balanceOf(address(this));
    }

    function balanceOfStakedWant() public view returns (uint256) {
        uint256 _amount = IFarm(farm).userInfo(farmPid, address(this));
        return _amount;
    }

    function setGovernance(address _governance) external {
        require(msg.sender == governance, "!governance");
        governance = _governance;
    }

    function setController(address _controller) external {
        require(msg.sender == governance, "!governance");
        controller = _controller;
    }

    function setStrategist(address _strategist) external {
        require(msg.sender == governance, "!governance");
        strategist = _strategist;
    }

    function setPerformanceFee(uint256 _performanceFee) external {
        require(
            msg.sender == strategist || msg.sender == governance,
            "!authorized"
        );
        performanceFee = _performanceFee;
    }

    function setStrategistReward(uint256 _strategistReward) external {
        require(
            msg.sender == strategist || msg.sender == governance,
            "!authorized"
        );
        strategistReward = _strategistReward;
    }

    function setWithdrawalFee(uint256 _withdrawalFee) external {
        require(msg.sender == governance, "!governance");
        withdrawalFee = _withdrawalFee;
    }

    function setHarvesterReward(uint256 _harvesterReward) external {
        require(
            msg.sender == strategist || msg.sender == governance,
            "!authorized"
        );
        harvesterReward = _harvesterReward;
    }

    function setrewardToTokenAPath(address[] calldata _rewardToTokenAPath)
        external
    {
        require(
            msg.sender == strategist || msg.sender == governance,
            "!authorized"
        );
        rewardToTokenAPath = _rewardToTokenAPath;
    }

    function pause() external {
        require(
            msg.sender == strategist || msg.sender == governance,
            "!authorized"
        );
        _withdrawAll();
        paused = true;
    }

    function unpause() external {
        require(
            msg.sender == strategist || msg.sender == governance,
            "!authorized"
        );
        paused = false;
        _stakeWant();
    }

    //In case anything goes wrong - MasterChef has migrator function and we have no guarantees how it might be used.
    //This does not increase user risk. Governance already controls funds via strategy upgrade, and is behind timelock and/or multisig.
    function executeTransaction(
        address target,
        uint256 value,
        string memory signature,
        bytes memory data
    ) public payable returns (bytes memory) {
        require(msg.sender == governance, "!governance");

        bytes memory callData;

        if (bytes(signature).length == 0) {
            callData = data;
        } else {
            callData = abi.encodePacked(
                bytes4(keccak256(bytes(signature))),
                data
            );
        }

        // solium-disable-next-line security/no-call-value
        (bool success, bytes memory returnData) = target.call.value(value)(
            callData
        );
        require(
            success,
            "Timelock::executeTransaction: Transaction execution reverted."
        );

        return returnData;
    }
}

interface IRouter {
    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    )
        external
        returns (
            uint256 amountA,
            uint256 amountB,
            uint256 liquidity
        );
}

interface IFarm {
    function deposit(uint256 _pid, uint256 _amount) external;

    function harvest(uint256 _pid) external;

    function emergencyWithdraw(uint256 _pid) external;

    function userInfo(uint256, address) external view returns (uint256 amount);

    function withdraw(uint256 _pid, uint256 _amount) external;
}
