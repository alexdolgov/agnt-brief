import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import ".//DogsNftManager.sol";
import "./StakeManagerV2.sol";
import "./interfaces/IDogsExchangeHelper.sol";
import "./interfaces/IDogsToken.sol";
import "./interfaces/IMasterchefPigs.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IWETH.sol";

contract NftPigMcStakingBnbWWrap is
    Ownable,
    ReentrancyGuard //consider doing structure where deposit withdraw etc are done through the dpm to avoid extra approvals
{
    using SafeERC20 for IERC20;

    IERC20 public PigsToken =
        IERC20(0x9a3321E1aCD3B9F6debEE5e042dD2411A1742002);
    IERC20 public BnbToken = IERC20(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c);
    IERC20 public Dogs_BNB_LpToken =
        IERC20(0x2139C481d4f31dD03F924B6e87191E15A33Bf8B4);
    IWETH wBnb = IWETH(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c);
    address public dogsToken = 0x198271b868daE875bFea6e6E4045cDdA5d6B9829;
    uint256 public lastPigsBalance = 0;
    uint256 public pigsRoundMask = 0;
    uint256 public lpStakedTotal;
    IDogsToken public DogsToken = IDogsToken(dogsToken);
    DogsNftManager public nftManager;
    IMasterchefPigs public MasterchefPigs =
        IMasterchefPigs(0x8536178222fC6Ec5fac49BbfeBd74CA3051c638f);
    IDogsExchangeHelper public DogsExchangeHelper =
        IDogsExchangeHelper(0xB59686fe494D1Dd6d3529Ed9df384cD208F182e8);

    IUniswapV2Router02 public constant PancakeRouter =
        IUniswapV2Router02(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    mapping(uint256 => NftInfo) public nftInfo;

    receive() external payable {}

    struct NftInfo {
        uint256 lpAmount;
        uint256 pigsMask;
    }

    constructor(address _nftManager) {
        nftManager = DogsNftManager(_nftManager);
        _approveTokenIfNeeded(dogsToken, address(_nftManager));
        _approveTokenIfNeeded(dogsToken, address(DogsExchangeHelper));
        _approveTokenIfNeeded(address(BnbToken), address(DogsExchangeHelper));
    }

    function deposit(
        uint256 _tokenID,
        uint256 _dogsAmount
    ) external payable nonReentrant {
        nftManager.transferFrom(msg.sender, address(this), _tokenID);
        claimPigsRewardsInternal(_tokenID);
        nftManager.useNFTbalance(_tokenID, _dogsAmount, address(this));
        uint256 bnbAmount = msg.value;
        wBnb.deposit{value: bnbAmount}();
        (
            uint256 dogsBnbLpReceived,
            uint256 balance2,
            uint256 balance
        ) = DogsExchangeHelper.addDogsLiquidity(
                address(BnbToken),
                bnbAmount,
                _dogsAmount
            );
        nftManager.returnNFTbalance(_tokenID, balance2, address(this));
        BnbToken.transfer(msg.sender, balance);
        // nftInfo[_tokenID].dogAmount += _dogsAmount - balance2;
        nftInfo[_tokenID].lpAmount += dogsBnbLpReceived;
        _stakeIntoMCPigs(dogsBnbLpReceived);
        nftManager.transferFrom(address(this), msg.sender, _tokenID);
    }

    function withdraw(
        uint256 _tokenID,
        uint256 _lpPercent
    ) external nonReentrant {
        require(_lpPercent <= 10000, "invalid percent");
        nftManager.transferFrom(msg.sender, address(this), _tokenID);
        uint256 lpToWithdraw = (nftInfo[_tokenID].lpAmount * _lpPercent) /
            10000;
        MasterchefPigs.withdraw(1, lpToWithdraw);
        handlePigsIncrease();
        claimPigsRewardsInternal(_tokenID);
        lpStakedTotal -= lpToWithdraw;
        (uint256 bnbRemoved, uint256 dogsRemoved) = removeLiquidityFromPair(
            lpToWithdraw
        );
        nftInfo[_tokenID].lpAmount -= lpToWithdraw;
        wBnb.withdraw(bnbRemoved);
        (bool success, ) = (msg.sender).call{value: bnbRemoved}("");
        require(success, "Transfer failed.");
        uint256 nftMaxBal = nftManager.nftPotentialBalance(_tokenID);
        uint256 nftCurBal = nftManager.nftHoldingBalance(_tokenID);
        if (dogsRemoved > nftMaxBal - nftCurBal) {
            uint256 fillAmount = nftMaxBal - nftCurBal;
            nftManager.returnNFTbalance(_tokenID, fillAmount, address(this));
            DogsToken.transfer(msg.sender, dogsRemoved - fillAmount);
        } else {
            nftManager.returnNFTbalance(_tokenID, dogsRemoved, address(this));
        }
        nftManager.transferFrom(address(this), msg.sender, _tokenID);
    }

    function claimPigsRewardsInternal(uint256 _tokenID) internal {
        uint256 pigsAmount = (nftInfo[_tokenID].lpAmount *
            (pigsRoundMask - nftInfo[_tokenID].pigsMask)) / 1e18;
        if (pigsAmount > lastPigsBalance) {
            pigsAmount = lastPigsBalance;
        }
        PigsToken.transfer(msg.sender, pigsAmount);
        lastPigsBalance -= pigsAmount;
        updateNftMask(_tokenID);
    }

    function claimPigsRewardsPublic(uint256[] memory _tokenIDs) public {
        for (uint256 i = 0; i < _tokenIDs.length; i++) {
            uint256 _tokenID = _tokenIDs[i];
            require(nftManager.ownerOf(_tokenID) == msg.sender, "not owner");
            uint256 pigsAmount = (nftInfo[_tokenID].lpAmount *
                (pigsRoundMask - nftInfo[_tokenID].pigsMask)) / 1e18;
            if (pigsAmount > lastPigsBalance) {
                pigsAmount = lastPigsBalance;
            }
            PigsToken.transfer(msg.sender, pigsAmount);
            lastPigsBalance -= pigsAmount;
            updateNftMask(_tokenID);
        }
    }

    function removeLiquidityFromPair(
        uint256 _amount
    ) internal returns (uint256 bnbRemoved, uint256 dogsRemoved) {
        Dogs_BNB_LpToken.approve(address(PancakeRouter), _amount);
        // add the liquidity
        (bnbRemoved, dogsRemoved) = PancakeRouter.removeLiquidity(
            address(BnbToken),
            dogsToken,
            _amount,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            address(this),
            block.timestamp
        );
    }

    function _approveTokenIfNeeded(address token, address _address) private {
        if (IERC20(token).allowance(address(this), address(_address)) == 0) {
            IERC20(token).safeApprove(address(_address), type(uint256).max);
        }
    }

    function handlePigsIncrease() internal {
        uint256 pigsEarned = getPigsEarned();
        pigsRoundMask += (pigsEarned * 1e18) / lpStakedTotal;
    }

    function _stakeIntoMCPigs(uint256 _amountLP) internal {
        allowanceCheckAndSet(
            IERC20(Dogs_BNB_LpToken),
            address(MasterchefPigs),
            _amountLP
        );
        MasterchefPigs.deposit(1, _amountLP);
        lpStakedTotal += _amountLP;
        handlePigsIncrease();
    }

    function pendingRewards(
        uint256 _tokenID
    ) external view returns (uint256 pigsAmount) {
        pigsAmount =
            (nftInfo[_tokenID].lpAmount *
                (pigsRoundMask - nftInfo[_tokenID].pigsMask)) /
            1e18;
    }

    function lpAmount(
        uint256 _tokenID
    ) external view returns (uint256 _lpAmount) {
        _lpAmount = nftInfo[_tokenID].lpAmount;
    }

    function allowanceCheckAndSet(
        IERC20 _token,
        address _spender,
        uint256 _amount
    ) internal {
        uint256 allowance = _token.allowance(address(this), _spender);
        if (allowance < _amount) {
            require(_token.approve(_spender, _amount), "allowance err");
        }
    }

    function setNftManager(address _nftManager) external onlyOwner {
        nftManager = DogsNftManager(_nftManager);
        _approveTokenIfNeeded(dogsToken, address(nftManager));
    }

    function getPigsEarned() internal returns (uint256) {
        uint256 pigsBalance = PigsToken.balanceOf(address(this));
        uint256 pigsEarned = pigsBalance - lastPigsBalance;
        lastPigsBalance = pigsBalance;
        return pigsEarned;
    }

    function updateNftMask(uint256 _tokenID) internal {
        nftInfo[_tokenID].pigsMask = pigsRoundMask;
    }
}
