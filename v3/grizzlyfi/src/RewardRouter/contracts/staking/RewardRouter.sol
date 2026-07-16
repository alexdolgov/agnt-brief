// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "../libraries/math/SafeMath.sol";
import "../libraries/token/IERC20.sol";
import "../libraries/token/SafeERC20.sol";
import "../libraries/utils/ReentrancyGuard.sol";
import "../libraries/utils/Address.sol";

import "./interfaces/IRewardTracker.sol";
import "../tokens/interfaces/IMintable.sol";
import "../tokens/interfaces/IWETH.sol";
import "../core/interfaces/IGllManager.sol";
import "../access/Governable.sol";
import "./../core/interfaces/IVault.sol";

contract RewardRouter is ReentrancyGuard, Governable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;
    using Address for address payable;

    address public immutable weth;

    address public immutable gll; 

    address public immutable feeGllTracker;

    address public immutable gllManager;

    IVault public immutable vault;

    mapping(address => address) public pendingReceivers;

    event StakeGll(address indexed account, uint256 amount);
    event UnstakeGll(address indexed account, uint256 amount);
    event StakeMigration(address indexed account, uint256 amount);

    receive() external payable {
        require(msg.sender == weth, "Router: invalid sender");
    }

    constructor(
        address _weth,
        address _gll,
        address _vault,
        address _feeGllTracker,
        address _gllManager
    ) public{
        weth = _weth;
        gll = _gll;
        vault = IVault(_vault);    

        feeGllTracker = _feeGllTracker;

        gllManager = _gllManager;

    }

    // to help users who accidentally send their tokens to this contract
    function withdrawToken(
        address _token,
        address _account,
        uint256 _amount
    ) external onlyGov {
        IERC20(_token).safeTransfer(_account, _amount);
    }

    function mintAndStakeGll(
        address _token,
        uint256 _amount,
        uint256 _minUsdg,
        uint256 _minGll
    ) external nonReentrant returns (uint256) {
        require(_amount != 0, "RewardRouter: invalid _amount");

        return _mintAndStakeGll(msg.sender,msg.sender,_token, _amount, _minUsdg, _minGll);
    }

    function _mintAndStakeGll(
        address fundingAccount,
        address account,
        address _token,
        uint256 _amount,
        uint256 _minUsdg,
        uint256 _minGll
    ) private returns (uint256) {

        uint256 gllAmount = IGllManager(gllManager).addLiquidityForAccount(fundingAccount, account, _token, _amount, _minUsdg, _minGll);
        IRewardTracker(feeGllTracker).stakeForAccount(account, account, gll, gllAmount);

        emit StakeGll(account, gllAmount);

        return gllAmount;
    }


    function mintAndStakeGllETH(uint256 _minUsdg, uint256 _minGll) external payable nonReentrant returns (uint256) {
        require(msg.value != 0, "RewardRouter: invalid msg.value");

        IWETH(weth).deposit{value: msg.value}();
        return _mintAndStakeGllETH(msg.value,_minUsdg, _minGll);
    }

    
    function _mintAndStakeGllETH(uint256 _amount,uint256 _minUsdg, uint256 _minGll) private returns (uint256) {
        require(_amount != 0, "RewardRouter: invalid _amount");

        IERC20(weth).approve(gllManager, _amount);

        address account = msg.sender;
        uint256 gllAmount = IGllManager(gllManager).addLiquidityForAccount(address(this), account, weth, _amount, _minUsdg, _minGll);

        IRewardTracker(feeGllTracker).stakeForAccount(account, account, gll, gllAmount);

        emit StakeGll(account, gllAmount);

        return gllAmount;
    }

    function unstakeAndRedeemGll(
        address _tokenOut,
        uint256 _gllAmount,
        uint256 _minOut,
        address _receiver
    ) external nonReentrant returns (uint256) {
        require(_gllAmount != 0, "RewardRouter: invalid _gllAmount");

        address account = msg.sender;
        IRewardTracker(feeGllTracker).unstakeForAccount(account, gll, _gllAmount, account);
        uint256 amountOut = IGllManager(gllManager).removeLiquidityForAccount(account, _tokenOut, _gllAmount, _minOut, _receiver);

        emit UnstakeGll(account, _gllAmount);

        return amountOut;
    }

    function unstakeAndRedeemGllETH(
        uint256 _gllAmount,
        uint256 _minOut,
        address payable _receiver
    ) external nonReentrant returns (uint256) {
        require(_gllAmount != 0, "RewardRouter: invalid _gllAmount");

        address account = msg.sender;
        IRewardTracker(feeGllTracker).unstakeForAccount(account, gll, _gllAmount, account);
        uint256 amountOut = IGllManager(gllManager).removeLiquidityForAccount(account, weth, _gllAmount, _minOut, address(this));

        IWETH(weth).withdraw(amountOut);

        _receiver.sendValue(amountOut);

        emit UnstakeGll(account, _gllAmount);

        return amountOut;
    }

    function claim(address _rewardToken, bool _shouldAddIntoGLL, bool withdrawEth) external nonReentrant {
        require(IRewardTracker(feeGllTracker).allTokens(_rewardToken), "RewardRouter: invalid _rewardToken");
        address account = msg.sender;
        if(_shouldAddIntoGLL && vault.whitelistedTokens(_rewardToken)){ 
            uint256 amount = IRewardTracker(feeGllTracker).claimForAccount(account, _rewardToken, address(this));
            if(amount > 0){
                if(_rewardToken == weth){
                    _mintAndStakeGllETH(amount,0,0);
                }else{
                    IERC20(_rewardToken).approve(gllManager, amount);
                    _mintAndStakeGll(address(this),account,_rewardToken,amount,0,0);
                }
            }   
        }else if(withdrawEth && _rewardToken == weth){
            uint256 amount = IRewardTracker(feeGllTracker).claimForAccount(account, _rewardToken, address(this));
            if(amount > 0){
                IWETH(weth).withdraw(amount);
                payable(account).sendValue(amount);
            }
        }else{
            IRewardTracker(feeGllTracker).claimForAccount(account, _rewardToken, account);
        }
    }

    function handleRewards(
        bool _shouldConvertWethToEth,
        bool _shouldAddIntoGLL
    ) external nonReentrant {
        address account = msg.sender;
        if (_shouldConvertWethToEth || _shouldAddIntoGLL ) {
            (address[] memory tokens,uint256[] memory amounts) = IRewardTracker(feeGllTracker).claimAllForAccount(account, address(this));
            for (uint256 i = 0; i < tokens.length; i++) {
                address token = tokens[i];
                uint256 amount = amounts[i];
                if(amount > 0){
                    if(_shouldAddIntoGLL && vault.whitelistedTokens(token)){ 
                        if(token == weth){
                            _mintAndStakeGllETH(amount,0,0);
                        }else{
                            IERC20(token).approve(gllManager, amount);
                            _mintAndStakeGll(address(this),account,token,amount,0,0);
                        }
                    }else if(_shouldConvertWethToEth && token == weth ){
                        IWETH(weth).withdraw(amount);
                        payable(account).sendValue(amount);
                    }else{
                        IERC20(token).safeTransfer(account, amount);
                    }    
                }         
            }    
        } else {
            IRewardTracker(feeGllTracker).claimAllForAccount(account, account);
        }
    }

    function signalTransfer(address _receiver) external nonReentrant {
        pendingReceivers[msg.sender] = _receiver;
    }

    function acceptTransfer(address _sender) external nonReentrant {
        address receiver = msg.sender;
        require(pendingReceivers[_sender] == receiver, "RewardRouter: transfer not signalled");
        require(
            IGllManager(gllManager).lastAddedAt(_sender).add(IGllManager(gllManager).cooldownDuration()) <= block.timestamp,
            "RewardRouter: cooldown duration not yet passed"
        );

        delete pendingReceivers[_sender];

        uint256 gllAmount = IRewardTracker(feeGllTracker).depositBalances(_sender, gll);
        if (gllAmount > 0) {
            IRewardTracker(feeGllTracker).unstakeForAccount(_sender, gll, gllAmount, _sender);
            IRewardTracker(feeGllTracker).stakeForAccount(_sender, receiver, gll, gllAmount);
        }
    }

}
