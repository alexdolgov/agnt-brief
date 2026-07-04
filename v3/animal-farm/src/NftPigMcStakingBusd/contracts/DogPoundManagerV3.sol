pragma solidity ^0.8.0;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/interfaces/IERC721.sol";

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./interfaces/IRewardsVault.sol";
import "./interfaces/IPancakePair.sol";
import "./interfaces/IMasterchefPigs.sol";
import "./interfaces/IPancakeFactory.sol";
import "./interfaces/IDogsToken.sol";
import "./interfaces/IDogPoundActions.sol";
import "./interfaces/IStakeManager.sol";
import "./interfaces/IRewardsVault.sol";
import ".//DogsNftManager.sol";
import "./DogPoundManager.sol";
import "./StakeManager.sol";
import "./StakeManagerV2.sol";
import "./NftPigMcStakingBusd.sol";

interface IDPMOLD {
    function linearPoolSize() external view returns (uint256);

    function autoPoolSize() external view returns (uint256);

    function userInfo(
        address
    ) external view returns (uint256, uint256, uint256, uint256);
}

contract DogPoundManagerV3 is Ownable {
    using SafeERC20 for IERC20;

    DogsNftManager public nftManager;
    StakeManager public stakeManagerV1 =
        StakeManager(0x25A959dDaEcEb50c1B724C603A57fe7b32eCbEeA);
    StakeManagerV2 public stakeManager;
    IDogPoundPool public DogPoundLinearPool =
        IDogPoundPool(0x935B36a774f2c04b8fA92acf3528d7DF681C0297);
    IDogPoundPool public DogPoundAutoPool =
        IDogPoundPool(0xf911D1d7118278f86eedfD94bC7Cd141D299E28D);
    IDogPoundActions public DogPoundActions;
    IRewardsVault public rewardsVault =
        IRewardsVault(0x4c004C4fB925Be396F902DE262F2817dEeBC22Ec);

    uint256 public walletReductionPerMonth = 200;
    uint256 public burnPercent = 30;
    uint256 public minHoldThreshold = 10e18;
    uint256 public dustAmount = 100000;
    uint256 public loyaltyScoreMaxReduction = 1000;
    uint256 public dogsDefaultTax = 9000;
    uint256 public minDogVarTax = 300;
    uint256 public withdrawlRestrictionTime = 24 hours;
    DogPoundManager public oldDp =
        DogPoundManager(0x1Bc00F2076A97A68511109883B0671721ff51955);
    IDPMOLD public oldOldDp =
        IDPMOLD(0x6dA8227Bc7B576781ffCac69437e17b8D4F4aE41);
    address public dogsToken = 0x198271b868daE875bFea6e6E4045cDdA5d6B9829;
    NftPigMcStakingBusd public nftStakeBusd;
    NftPigMcStakingBusd public nftStakeBnb;
    IDogsToken public DogsToken = IDogsToken(dogsToken);
    IUniswapV2Router02 public constant PancakeRouter =
        IUniswapV2Router02(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    uint256 public linearPoolSize;
    uint256 public autoPoolSize;

    struct UserInfo {
        uint256 walletStartTime;
        uint256 overThresholdTimeCounter;
        uint256 lastDepositTime;
        uint256 totalStaked;
    }

    struct StakeInfo {
        uint256 amount;
        uint256 startTime;
        bool isAutoPool;
    }

    mapping(address => UserInfo) public userInfo;

    constructor(
        address _nftManager,
        address _nftStakeBusd,
        address _nftStakeBnb
    ) {
        nftStakeBusd = NftPigMcStakingBusd(payable(_nftStakeBusd));
        nftStakeBnb = NftPigMcStakingBusd(payable(_nftStakeBnb));
        nftManager = DogsNftManager(_nftManager);

        autoPoolSize = oldDp.autoPoolSize();
        linearPoolSize = oldDp.linearPoolSize();
        _approveTokenIfNeeded(
            0x198271b868daE875bFea6e6E4045cDdA5d6B9829,
            address(PancakeRouter)
        );
        _approveTokenIfNeeded(
            0x198271b868daE875bFea6e6E4045cDdA5d6B9829,
            address(_nftManager)
        );
    }

    function deposit(uint256 _amount, bool _isAutoCompound) external {
        require(_amount > 0, "deposit !> 0");
        initUser(msg.sender);
        stakeManager.saveStake(msg.sender, _amount, _isAutoCompound);
        DogsToken.transferFrom(msg.sender, address(this), _amount);
        if (
            userInfo[msg.sender].totalStaked + _amount >= minHoldThreshold &&
            userInfo[msg.sender].walletStartTime == 0
        ) {
            userInfo[msg.sender].walletStartTime = block.timestamp;
        }
        if (_isAutoCompound) {
            DogsToken.transfer(address(DogPoundAutoPool), _amount);
            DogPoundAutoPool.deposit(msg.sender, _amount);
            autoPoolSize += _amount;
        } else {
            DogsToken.transfer(address(DogPoundLinearPool), _amount);
            DogPoundLinearPool.deposit(msg.sender, _amount);
            linearPoolSize += _amount;
        }
        userInfo[msg.sender].totalStaked += _amount;
        userInfo[msg.sender].lastDepositTime = block.timestamp;
    }

    function depositOldUserInit(
        uint256 _amount,
        bool _isAutoCompound,
        uint256 _lastActiveStake
    ) external {
        require(_amount > 0, "deposit !> 0");
        initUser(msg.sender);
        stakeManager.saveStakeOldUserInit(
            msg.sender,
            _amount,
            _isAutoCompound,
            _lastActiveStake
        );
        DogsToken.transferFrom(msg.sender, address(this), _amount);
        if (
            userInfo[msg.sender].totalStaked >= minHoldThreshold &&
            userInfo[msg.sender].walletStartTime == 0
        ) {
            userInfo[msg.sender].walletStartTime = block.timestamp;
        }
        if (_isAutoCompound) {
            DogsToken.transfer(address(DogPoundAutoPool), _amount);
            DogPoundAutoPool.deposit(msg.sender, _amount);
            autoPoolSize += _amount;
        } else {
            DogsToken.transfer(address(DogPoundLinearPool), _amount);
            DogPoundLinearPool.deposit(msg.sender, _amount);
            linearPoolSize += _amount;
        }
        userInfo[msg.sender].totalStaked += _amount;
        userInfo[msg.sender].lastDepositTime = block.timestamp;
    }

    function withdrawToWallet(uint256 _amount, uint256 _stakeID) external {
        initUser(msg.sender);
        require(
            block.timestamp - userInfo[msg.sender].lastDepositTime >
                withdrawlRestrictionTime,
            "withdrawl locked"
        );
        _withdraw(_amount, _stakeID);
        if (
            userInfo[msg.sender].totalStaked < minHoldThreshold &&
            userInfo[msg.sender].walletStartTime > 0
        ) {
            userInfo[msg.sender].overThresholdTimeCounter +=
                block.timestamp -
                userInfo[msg.sender].walletStartTime;
            userInfo[msg.sender].walletStartTime = 0;
        }
    }

    function swapFromWithdrawnStake(
        uint256 _amount,
        uint256 _tokenID,
        address[] memory path
    ) public {
        initUser(msg.sender);
        uint256 taxReduction = totalTaxReductionWithdrawnStake(
            msg.sender,
            _tokenID
        );
        nftManager.transferFrom(msg.sender, address(this), _tokenID);
        nftManager.useNFTbalance(_tokenID, _amount, address(this));
        doSwap(address(this), _amount, taxReduction, path);
        IERC20 transfertoken = IERC20(path[path.length - 1]);
        uint256 balance = transfertoken.balanceOf(address(this));
        uint256 balance2 = DogsToken.balanceOf(address(this));
        nftManager.returnNFTbalance(_tokenID, balance2, address(this));
        nftManager.utilizeNFTbalance(_tokenID, _amount - balance2);
        transfertoken.transfer(msg.sender, balance);
        if (
            nftManager.nftPotentialBalance(_tokenID) +
                nftStakeBnb.lpAmount(_tokenID) +
                nftStakeBusd.lpAmount(_tokenID) >
            dustAmount
        ) {
            nftManager.transferFrom(address(this), msg.sender, _tokenID);
        } else {
            nftManager.transferFrom(
                address(this),
                0x000000000000000000000000000000000000dEaD,
                _tokenID
            );
        }
    }

    function transferFromWithdrawnStake(
        uint256 _amount,
        address _to,
        uint256 _tokenID
    ) public {
        initUser(msg.sender);
        uint256 taxReduction = totalTaxReductionWithdrawnStake(
            msg.sender,
            _tokenID
        );
        nftManager.transferFrom(msg.sender, address(this), _tokenID);
        nftManager.useNFTbalance(_tokenID, _amount, address(this));
        nftManager.utilizeNFTbalance(_tokenID, _amount);
        doTransfer(_to, _amount, taxReduction);
        if (
            nftManager.nftPotentialBalance(_tokenID) +
                nftStakeBnb.lpAmount(_tokenID) +
                nftStakeBusd.lpAmount(_tokenID) >
            dustAmount
        ) {
            nftManager.transferFrom(address(this), msg.sender, _tokenID);
        } else {
            nftManager.transferFrom(
                address(this),
                0x000000000000000000000000000000000000dEaD,
                _tokenID
            );
        }
    }

    function returnNftBalanceThroughManager(
        uint256 _tokenID,
        uint256 _amount
    ) public {
        nftManager.transferFrom(msg.sender, address(this), _tokenID);
        DogsToken.transferFrom(msg.sender, address(this), _amount);
        nftManager.returnNFTbalance(_tokenID, _amount, address(this));
        nftManager.transferFrom(address(this), msg.sender, _tokenID);
    }

    function _approveTokenIfNeeded(address token, address _address) private {
        if (IERC20(token).allowance(address(this), address(_address)) == 0) {
            IERC20(token).safeApprove(address(_address), type(uint256).max);
        }
    }

    // Internal functions
    function _withdraw(uint256 _amount, uint256 _stakeID) internal {
        bool isAutoPool = stakeManager.isStakeAutoPool(msg.sender, _stakeID);
        if (isAutoPool) {
            DogPoundAutoPool.withdraw(msg.sender, _amount);
            autoPoolSize -= _amount;
        } else {
            DogPoundLinearPool.withdraw(msg.sender, _amount);
            linearPoolSize -= _amount;
        }
        stakeManager.withdrawFromStake(
            msg.sender,
            _amount,
            _stakeID,
            address(this)
        );
        userInfo[msg.sender].totalStaked -= _amount;
    }

    // View functions
    function walletTaxReduction(address _user) public view returns (uint256) {
        UserInfo storage user = userInfo[_user];
        uint256 walletStartTime = user.walletStartTime;
        uint256 overThresholdTimeCounter = user.overThresholdTimeCounter;
        uint256 totalStaked = user.totalStaked;
        if (user.lastDepositTime == 0) {
            (walletStartTime, overThresholdTimeCounter, , ) = oldDp
                .readOldStruct2(_user);
            totalStaked = stakeManagerV1.totalStaked(_user);
        }
        uint256 currentReduction = 0;
        if (totalStaked < minHoldThreshold) {
            currentReduction =
                (overThresholdTimeCounter / 30 days) *
                walletReductionPerMonth;
            if (currentReduction > loyaltyScoreMaxReduction) {
                return loyaltyScoreMaxReduction;
            }
            return currentReduction;
        }
        currentReduction =
            (((block.timestamp - walletStartTime) + overThresholdTimeCounter) /
                30 days) *
            walletReductionPerMonth;
        if (currentReduction > loyaltyScoreMaxReduction) {
            return loyaltyScoreMaxReduction;
        }
        return currentReduction;
    }

    function totalTaxReductionWithdrawnStake(
        address _user,
        uint256 _tokenID
    ) public view returns (uint256) {
        uint256 stakeReduction = stakeManager.getWithdrawnStakeTaxReduction(
            _tokenID
        );
        uint256 walletReduction = walletTaxReduction(_user);
        uint256 _totalTaxReduction = stakeReduction + walletReduction;
        if (_totalTaxReduction >= (dogsDefaultTax - (2 * minDogVarTax))) {
            _totalTaxReduction = 300;
        } else {
            _totalTaxReduction =
                dogsDefaultTax -
                _totalTaxReduction -
                minDogVarTax;
        }
        return _totalTaxReduction;
    }

    function transitionOldWithdrawnStake(
        address _user,
        uint256 _stakeID
    ) external {
        uint256 _amount = stakeManager
            .withdrawnStakeMove(_user, _stakeID)
            .amount;
        DogsToken.transferFrom(msg.sender, address(this), _amount);
        stakeManager.transitionOldWithdrawnStake(
            _user,
            _stakeID,
            address(this)
        );
    }

    function readOldStruct2(
        address _user
    ) public view returns (uint256, uint256, uint256, uint256) {
        if (userInfo[_user].lastDepositTime == 0) {
            return oldDp.readOldStruct2(_user);
        }
        return (
            userInfo[_user].walletStartTime,
            userInfo[_user].overThresholdTimeCounter,
            userInfo[_user].lastDepositTime,
            userInfo[_user].totalStaked
        );
    }

    function setminHoldThreshold(uint256 _minHoldThreshold) external onlyOwner {
        minHoldThreshold = _minHoldThreshold;
    }

    function setPoolSizes(uint256 s1, uint256 s2) external onlyOwner {
        linearPoolSize = s1;
        autoPoolSize = s2;
    }

    function setAutoPool(address _autoPool) external onlyOwner {
        DogPoundAutoPool = IDogPoundPool(_autoPool);
    }

    function setLinearPool(address _linearPool) external onlyOwner {
        DogPoundLinearPool = IDogPoundPool(_linearPool);
    }

    function setNftManager(address _nftManager) external onlyOwner {
        nftManager = DogsNftManager(_nftManager);
        _approveTokenIfNeeded(
            0x198271b868daE875bFea6e6E4045cDdA5d6B9829,
            address(nftManager)
        );
    }

    function setStakeManager(address _stakeManager) external onlyOwner {
        stakeManager = StakeManagerV2(_stakeManager);
    }

    function changeWalletReductionRate(
        uint256 walletReduction
    ) external onlyOwner {
        require(walletReduction < 1000);
        walletReductionPerMonth = walletReduction;
    }

    function changeWalletCapReduction(
        uint256 walletReductionCap
    ) external onlyOwner {
        require(walletReductionCap < 6000);
        loyaltyScoreMaxReduction = walletReductionCap;
    }

    function getAutoPoolSize() external view returns (uint256) {
        if (linearPoolSize == 0) {
            return 0;
        }
        return ((autoPoolSize * 10000) / (linearPoolSize + autoPoolSize));
    }

    function totalStaked(address _user) external view returns (uint256) {
        return userInfo[_user].totalStaked;
    }

    function changeBurnPercent(uint256 newBurn) external onlyOwner {
        require(burnPercent < 200);
        burnPercent = newBurn;
    }

    function initUser(address _user) internal {
        if (userInfo[_user].lastDepositTime == 0) {
            (uint256 e, uint256 e2, uint256 _deptime, uint256 e3) = oldDp
                .readOldStruct2(_user);
            if (_deptime != 0) {
                userInfo[_user].walletStartTime = e;
                userInfo[_user].overThresholdTimeCounter = e2;
                userInfo[_user].lastDepositTime = _deptime;
                userInfo[_user].totalStaked = stakeManagerV1.totalStaked(_user);
            }
        }
    }

    function readOldStruct(
        address _user
    ) public view returns (uint256, uint256, uint256, uint256) {
        return oldDp.userInfo(_user);
    }

    function readOldOldStruct(
        address _user
    ) public view returns (uint256, uint256, uint256, uint256) {
        return oldOldDp.userInfo(_user);
    }

    function doSwap(
        address _to,
        uint256 _amount,
        uint256 _taxReduction,
        address[] memory path
    ) internal {
        uint256 burnAmount = (_amount * burnPercent) / 1000;
        uint256 leftAmount = _amount - burnAmount;
        uint256 tempTaxval = 1e14 / (1e3 - burnPercent);
        uint256 taxreductionNew = (_taxReduction * tempTaxval) / 1e11;

        DogsToken.updateTransferTaxRate(taxreductionNew);
        // make the swap
        PancakeRouter.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            leftAmount,
            0, // accept any amount of tokens
            path,
            _to,
            block.timestamp
        );

        DogsToken.updateTransferTaxRate(dogsDefaultTax);

        DogsToken.burn(burnAmount);
    }

    function doTransfer(
        address _to,
        uint256 _amount,
        uint256 _taxReduction
    ) internal {
        uint256 burnAmount = (_amount * burnPercent) / 1000;
        uint256 leftAmount = _amount - burnAmount;
        uint256 tempTaxval = 1e14 / (1e3 - burnPercent);
        uint256 taxreductionNew = (_taxReduction * tempTaxval) / 1e11;

        DogsToken.updateTransferTaxRate(taxreductionNew);

        DogsToken.transfer(_to, leftAmount);

        DogsToken.updateTransferTaxRate(dogsDefaultTax);

        DogsToken.burn(burnAmount);
    }

    function setDogsTokenAndDefaultTax(
        address _address,
        uint256 _defaultTax
    ) external onlyOwner {
        DogsToken = IDogsToken(_address);
        dogsDefaultTax = _defaultTax;
    }

    function setRewardsVault(address _rewardsVaultAddress) public onlyOwner {
        rewardsVault = IRewardsVault(_rewardsVaultAddress);
    }
}
