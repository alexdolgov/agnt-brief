// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

import "../../interface/IMasterChef.sol";
import "../../interface/IERC20.sol";
import "../../interface/IStargateRouter.sol";
import "../../interface/IPoolLpToken.sol";
import "../../interface/IERC20Burnable.sol";
import "../../lib/Math.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract LizardStrategyUsdcStgV5 is Initializable {
    address public owner;

    address public stg;
    address public usdc;

    address public susdc;
    uint16 public susdcPoolId;
    address public stgRouter;

    address public chefStg;
    uint256 public chefPoolId;

    address public lizardUsdc;
    address public timelock;

    bool public isExit;

    uint256 public maximumMint;

    mapping(address => bool) public whitelist;

    bool private locked;

    uint256 public mintFeesNumerator;
    uint256 public mintFeesDenominator;

    uint256 public redeemFeesNumerator;
    uint256 public redeemFeesDenominator;

    event Deposit(uint256 amount);
    event Withdraw(uint256 amount);

    function initialize(address _lizardUsdc) public initializer {
        stg = 0x6694340fc020c5E6B96567843da2df01b2CE1eb6;
        usdc = 0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8;

        susdc = 0x892785f33CdeE22A30AEF750F285E18c18040c3e;
        susdcPoolId = 1;
        stgRouter = 0x53Bf833A5d6c4ddA888F69c22C88C9f356a41614;

        chefStg = 0xeA8DfEE1898a7e0a59f7527F076106d7e44c2176;
        chefPoolId = 0;
        maximumMint = 500000 * 1000000;

        mintFeesNumerator = 1;
        mintFeesDenominator = 10000;

        redeemFeesNumerator = 1;
        redeemFeesDenominator = 10000;

        isExit = false;

        lizardUsdc = _lizardUsdc;
        owner = msg.sender;
        timelock = msg.sender;
        _giveAllowances();
    }

    // MODIFIERS
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier nonReentrant() {
        require(!locked, "No re-entrancy");
        locked = true;
        _;
        locked = false;
    }


    //UTILS

    function applyFees(
        uint256 _amount,
        uint256 feesNumerator,
        uint256 feesDenominator
    ) internal pure returns (uint256) {
        return _amount - (_amount * feesNumerator) / feesDenominator;
    }

    // TIMELOCK
    function changeTimelock(address _timelock) public {
        require(msg.sender == timelock, "Not old timelock");
        timelock = _timelock;
    }

    function withdrawUsdcGrowth() public {
        require(msg.sender == timelock, "not timelock");
        uint256 susdcTotalLiquidity = IPoolLpToken(susdc).totalLiquidity();
        uint256 susdcTotalSupply = IPoolLpToken(susdc).totalSupply();

        require(
            susdcTotalLiquidity > 0 && susdcTotalSupply > 0,
            "cant convert (S*USDC) to USDC when (S*USDC).totalLiquidity == 0 || totalSupply == 0"
        );

        uint256 lizardUsdcTotalSupply = IERC20(lizardUsdc).totalSupply();

        (uint256 balanceSusdcChef, ) = IMasterChef(chefStg).userInfo(
            chefPoolId,
            address(this)
        );
        uint256 balanceSusdc = IERC20(susdc).balanceOf(address(this));
        uint256 balanceUsdc = IERC20(usdc).balanceOf(address(this));

        uint256 balanceSusdcInUsdc = ((balanceSusdc + balanceSusdcChef) *
            susdcTotalLiquidity) / susdcTotalSupply; // /!\  decimal susdc == decimal usdc

        // enough susdc and usdc to redeem all LizardUsdc supplies 
        if (balanceSusdcInUsdc + balanceUsdc > lizardUsdcTotalSupply) {
            //more than necessary to redeem 100% of the LizardUsdc supply.

            //we unstack the growth
            uint256 amountUsdcGrowth = balanceSusdcInUsdc +
                balanceUsdc -
                lizardUsdcTotalSupply;
            if (amountUsdcGrowth > balanceUsdc) {
                uint256 amountSusdcToRedeem = ((amountUsdcGrowth -
                    balanceUsdc) * susdcTotalSupply) / susdcTotalLiquidity;

                if (amountSusdcToRedeem > balanceSusdc) {
                    IMasterChef(chefStg).withdraw(
                        chefPoolId,
                        Math.min(
                            amountSusdcToRedeem - balanceSusdc,
                            balanceSusdcChef
                        )
                    );
                }

                //keep usdc on the contract rather than susdc so we redeem all
                IStargateRouter(stgRouter).instantRedeemLocal(
                    susdcPoolId,
                    IERC20(susdc).balanceOf(address(this)),
                    address(this)
                );
            }
            //we transfer the growth usdc
            IERC20(usdc).transfer(
                msg.sender,
                Math.min(
                    amountUsdcGrowth,
                    IERC20(usdc).balanceOf(address(this))
                )
            );
        }
    }

    function updateFees(
        uint256 _mintFeesNumerator,
        uint256 _mintFeesDenominator,
        uint256 _redeemFeesNumerator,
        uint256 _redeemFeesDenominator
    ) public onlyOwner {
        require(
            _mintFeesNumerator*100 <= _mintFeesDenominator,
            "mint fees must be less than 1%"
        );
        require(
            _redeemFeesNumerator*100 <= _redeemFeesDenominator,
            "redeem fees must be less than 1%"
        );

        mintFeesNumerator = _mintFeesNumerator;
        mintFeesDenominator = _mintFeesDenominator;

        redeemFeesNumerator = _redeemFeesNumerator;
        redeemFeesDenominator = _redeemFeesDenominator;
    }

    function setMaximumMint(uint256 _maximumMint) public onlyOwner {
        maximumMint = _maximumMint;
    }

    function changeOwner(address _newOwner) public onlyOwner {
        owner = _newOwner;
    }

    function addToWhitelist(address _address) public onlyOwner {
        whitelist[_address] = true;
    }

    function removeFromWhitelist(address _address) public onlyOwner {
        if (whitelist[_address]) {
            delete whitelist[_address];
        }
    }

    function withdrawReward() public onlyOwner {
        IMasterChef(chefStg).deposit(chefPoolId, 0);
        IERC20(stg).transfer(msg.sender, IERC20(stg).balanceOf(address(this)));
    }

    function giveAllowances() public onlyOwner {
        _giveAllowances();
    }

    function exit() public onlyOwner {
        (uint256 balanceSusdcChef, ) = IMasterChef(chefStg).userInfo(
            chefPoolId,
            address(this)
        );

        IMasterChef(chefStg).withdraw(chefPoolId, balanceSusdcChef);
        IStargateRouter(stgRouter).instantRedeemLocal(
            susdcPoolId,
            IERC20(susdc).balanceOf(address(this)),
            address(this)
        );
        isExit = true;
    }

    function stopExit() public onlyOwner {
        isExit = false;
    }

    //PUBLIC
    function pegStatus()
        public
        view
        returns (uint256 stackedAmount, uint256 supplyAmount)
    {
        uint256 susdcTotalLiquidity = IPoolLpToken(susdc).totalLiquidity();
        uint256 susdcTotalSupply = IPoolLpToken(susdc).totalSupply();
        require(
            susdcTotalLiquidity > 0 && susdcTotalSupply > 0,
            "can t convert (S*USDC) to USDC when (S*USDC).totalLiquidity == 0 || totalSupply == 0"
        );
        uint256 lizardUsdcTotalSupply = IERC20(lizardUsdc).totalSupply();

        (uint256 balanceSusdcChef, ) = IMasterChef(chefStg).userInfo(
            chefPoolId,
            address(this)
        );

        uint256 balanceSusdcInUsdc = ((balanceSusdcChef +
            IERC20(susdc).balanceOf(address(this))) * susdcTotalLiquidity) /
            susdcTotalSupply;

        return (
            balanceSusdcInUsdc + IERC20(usdc).balanceOf(address(this)),
            lizardUsdcTotalSupply
        );
    }

    function deposit(uint256 _amountUsdc) public nonReentrant {
        require(
            tx.origin == msg.sender || whitelist[msg.sender],
            "only no smart contract or whitelist"
        );
        require(
            IERC20Burnable(lizardUsdc).totalSupply() + _amountUsdc <
                maximumMint,
            "maximum lizardUsdc minted"
        );

        uint256 oldBalUsdc = IERC20(usdc).balanceOf(address(this));
        IERC20(usdc).transferFrom(msg.sender, address(this), _amountUsdc);
        uint256 balUsdc = IERC20(usdc).balanceOf(address(this));

        require(
            balUsdc >= _amountUsdc + oldBalUsdc,
            "transfer usdc from sender failed"
        );

        IERC20Burnable(lizardUsdc).mint(
            msg.sender,
            applyFees(_amountUsdc, mintFeesNumerator, mintFeesDenominator)
        );

        if (!isExit) //we stack the usdc
        {
            // convert all usdc we have to susdc
            IStargateRouter(stgRouter).addLiquidity(
                susdcPoolId,
                balUsdc,
                address(this)
            );

            IMasterChef(chefStg).deposit(
                chefPoolId,
                IERC20(susdc).balanceOf(address(this))
            ); //deposit all we have
        }
        emit Deposit(_amountUsdc);
    }

    function withdraw(uint256 _amountUsdc) public nonReentrant {
        require(
            tx.origin == msg.sender || whitelist[msg.sender],
            "only no smart contract or whitelist"
        );
        require(_amountUsdc > 0, "amount must be greater than 0");

        uint256 susdcTotalLiquidity = IPoolLpToken(susdc).totalLiquidity();
        uint256 susdcTotalSupply = IPoolLpToken(susdc).totalSupply();
        require(
            susdcTotalLiquidity > 0 && susdcTotalSupply > 0,
            "cant convert (S*USDC) to USDC when (S*USDC).totalLiquidity == 0 || totalSupply == 0"
        );

        uint256 lizardUsdcTotalSupply = IERC20(lizardUsdc).totalSupply();

        (uint256 balanceSusdcChef, ) = IMasterChef(chefStg).userInfo(
            chefPoolId,
            address(this)
        );
        uint256 balanceSusdc = IERC20(susdc).balanceOf(address(this));
        uint256 balanceUsdc = IERC20(usdc).balanceOf(address(this));

        uint256 balanceSusdcInUsdc = ((balanceSusdc + balanceSusdcChef) *
            susdcTotalLiquidity) / susdcTotalSupply;

        uint256 finalAmountUsdc = applyFees(
            _amountUsdc,
            redeemFeesNumerator,
            redeemFeesDenominator
        );

        if (
            balanceSusdcInUsdc + balanceUsdc < lizardUsdcTotalSupply
        ) //not enough to redeem with 1/1 ratio
        {
            finalAmountUsdc =
                (finalAmountUsdc * (balanceSusdcInUsdc + balanceUsdc)) /
                lizardUsdcTotalSupply;
        }

        if (finalAmountUsdc > balanceUsdc) {
            uint256 amountSusdcToRedeem = ((finalAmountUsdc - balanceUsdc) *
                susdcTotalSupply) / susdcTotalLiquidity;

            if (amountSusdcToRedeem > balanceSusdc) {
                IMasterChef(chefStg).withdraw(
                    chefPoolId,
                    Math.min(
                        amountSusdcToRedeem - balanceSusdc,
                        balanceSusdcChef
                    )
                );
            }

            IStargateRouter(stgRouter).instantRedeemLocal( //keep usdc on the contract rather than susdc so we redeem all
                susdcPoolId,
                IERC20(susdc).balanceOf(address(this)),
                address(this)
            );
        }

        uint256 realAmountUsdc = Math.min(finalAmountUsdc, IERC20(usdc).balanceOf(address(this)));
        IERC20Burnable(lizardUsdc).burn(msg.sender, _amountUsdc*realAmountUsdc/finalAmountUsdc); // burn after read totalSupply

        IERC20(usdc).transfer(
            msg.sender,realAmountUsdc
        );

        emit Withdraw(_amountUsdc);
    }

    // INTERNAL
    function _giveAllowances() internal {
        IERC20(usdc).approve(stgRouter, type(uint256).max);
        IERC20(susdc).approve(chefStg, type(uint256).max);
    }
}
