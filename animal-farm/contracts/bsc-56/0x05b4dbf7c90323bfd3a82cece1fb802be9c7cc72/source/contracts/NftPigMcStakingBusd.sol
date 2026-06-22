import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";

import ".//DogsNftManager.sol";
import "./StakeManagerV2.sol";
import "./interfaces/IDogsExchangeHelper.sol";
import "./interfaces/IDogsToken.sol";
import "./interfaces/IMasterchefPigs.sol";

contract NftPigMcStakingBusd is
    Ownable //consider doing structure where deposit withdraw etc are done through the dpm to avoid extra approvals
{
    using SafeERC20 for IERC20;

    IERC20 public PigsToken =
        IERC20(0x9a3321E1aCD3B9F6debEE5e042dD2411A1742002);
    IERC20 public BusdToken =
        IERC20(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);
    IERC20 public Dogs_BUSD_LpToken =
        IERC20(0xb5151965b13872B183EBa08e33D0d06743AC8132);
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
        _approveTokenIfNeeded(address(BusdToken), address(DogsExchangeHelper));
    }

    function deposit(
        uint256 _tokenID,
        uint256 _dogsAmount,
        uint256 _busdAmount
    ) external {
        nftManager.transferFrom(msg.sender, address(this), _tokenID);
        claimPigsRewardsInternal(_tokenID);
        nftManager.useNFTbalance(_tokenID, _dogsAmount, address(this));
        BusdToken.transferFrom(msg.sender, address(this), _busdAmount);
        (
            uint256 dogsBusdLpReceived,
            uint256 balance2,
            uint256 balance
        ) = DogsExchangeHelper.addDogsLiquidity(
                address(BusdToken),
                _busdAmount,
                _dogsAmount
            );
        nftManager.returnNFTbalance(_tokenID, balance2, address(this));
        BusdToken.transfer(msg.sender, balance);
        // nftInfo[_tokenID].dogAmount += _dogsAmount - balance2;
        nftInfo[_tokenID].lpAmount += dogsBusdLpReceived;
        _stakeIntoMCPigs(dogsBusdLpReceived);
        nftManager.transferFrom(address(this), msg.sender, _tokenID);
    }

    function withdraw(uint256 _tokenID, uint256 _lpPercent) external {
        require(_lpPercent <= 10000, "invalid percent");
        nftManager.transferFrom(msg.sender, address(this), _tokenID);
        uint256 lpToWithdraw = (nftInfo[_tokenID].lpAmount * _lpPercent) /
            10000;
        MasterchefPigs.withdraw(0, lpToWithdraw);
        handlePigsIncrease();
        claimPigsRewardsInternal(_tokenID);
        lpStakedTotal -= lpToWithdraw;
        (uint256 busdRemoved, uint256 dogsRemoved) = removeLiquidityFromPair(
            lpToWithdraw
        );
        nftInfo[_tokenID].lpAmount -= lpToWithdraw;
        BusdToken.transfer(msg.sender, busdRemoved);
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
    ) internal returns (uint256 busdRemoved, uint256 dogsRemoved) {
        Dogs_BUSD_LpToken.approve(address(PancakeRouter), _amount);
        // add the liquidity
        (busdRemoved, dogsRemoved) = PancakeRouter.removeLiquidity(
            address(BusdToken),
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
            IERC20(Dogs_BUSD_LpToken),
            address(MasterchefPigs),
            _amountLP
        );
        MasterchefPigs.deposit(0, _amountLP);
        lpStakedTotal += _amountLP;
        handlePigsIncrease();
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
