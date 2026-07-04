// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

import "../../interface/IMasterChef.sol";
import "../../interface/IERC20.sol";
import "../../interface/IStargateRouter.sol";
import "../../interface/IPoolLpToken.sol";
import "../../interface/IERC20Burnable.sol";
import "../../lib/Math.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract LizardStrategyUsdtStgV4 is Initializable {
    address public owner;

    address public stg;
    address public usdt;

    address public susdt;
    uint16 public susdtPoolId;
    address public stgRouter;

    address public chefStg;
    uint256 public chefPoolId;

    address public lizardUsdt;
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

    function initialize(address _lizardUsdt) public initializer {
        stg = 0x6694340fc020c5E6B96567843da2df01b2CE1eb6;
        usdt = 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9;

        susdt = 0xB6CfcF89a7B22988bfC96632aC2A9D6daB60d641;
        susdtPoolId = 2;
        stgRouter = 0x53Bf833A5d6c4ddA888F69c22C88C9f356a41614;

        chefStg = 0xeA8DfEE1898a7e0a59f7527F076106d7e44c2176;
        chefPoolId = 1;
        maximumMint = 500000 * 1000000;

        mintFeesNumerator = 1;
        mintFeesDenominator = 10000;

        redeemFeesNumerator = 1;
        redeemFeesDenominator = 10000;

        isExit = false;

        lizardUsdt = _lizardUsdt;
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

    function withdrawUsdtGrowth() public {
        require(msg.sender == timelock, "not timelock");
        uint256 susdtTotalLiquidity = IPoolLpToken(susdt).totalLiquidity();
        uint256 susdtTotalSupply = IPoolLpToken(susdt).totalSupply();

        require(
            susdtTotalLiquidity > 0 && susdtTotalSupply > 0,
            "cant convert (S*USDt) to USDt when (S*USDt).totalLiquidity == 0 || totalSupply == 0"
        );

        uint256 lizardUsdtTotalSupply = IERC20(lizardUsdt).totalSupply();

        (uint256 balanceSusdtChef, ) = IMasterChef(chefStg).userInfo(
            chefPoolId,
            address(this)
        );
        uint256 balanceSusdt = IERC20(susdt).balanceOf(address(this));
        uint256 balanceUsdt = IERC20(usdt).balanceOf(address(this));

        uint256 balanceSusdtInUsdt = ((balanceSusdt + balanceSusdtChef) *
            susdtTotalLiquidity) / susdtTotalSupply; // /!\ decimal susdt == decimal usdt

        // enough susdt and usdt to redeem all LizardUsdt supplies ?
        if (balanceSusdtInUsdt + balanceUsdt > lizardUsdtTotalSupply) {
            //more than necessary to redeem 100% of the LizardUsdt supply.

            //unstack the growth
            uint256 amountUsdtGrowth = balanceSusdtInUsdt +
                balanceUsdt -
                lizardUsdtTotalSupply;
            if (amountUsdtGrowth > balanceUsdt) {
                uint256 amountSusdtToRedeem = ((amountUsdtGrowth -
                    balanceUsdt) * susdtTotalSupply) / susdtTotalLiquidity;

                if (amountSusdtToRedeem > balanceSusdt) {
                    IMasterChef(chefStg).withdraw(
                        chefPoolId,
                        Math.min(
                            amountSusdtToRedeem - balanceSusdt,
                            balanceSusdtChef
                        )
                    );
                }

                //keep usdt on the contract rather than susdt so we redeem all
                IStargateRouter(stgRouter).instantRedeemLocal(
                    susdtPoolId,
                    IERC20(susdt).balanceOf(address(this)),
                    address(this)
                );
            }
            //transfer the growth usdt
            IERC20(usdt).transfer(
                msg.sender,
                Math.min(
                    amountUsdtGrowth,
                    IERC20(usdt).balanceOf(address(this))
                )
            );
        }
    }

    // ONLYOWNER

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
        (uint256 balanceSusdtChef, ) = IMasterChef(chefStg).userInfo(
            chefPoolId,
            address(this)
        );

        IMasterChef(chefStg).withdraw(chefPoolId, balanceSusdtChef);
        IStargateRouter(stgRouter).instantRedeemLocal(
            susdtPoolId,
            IERC20(susdt).balanceOf(address(this)),
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
        uint256 susdtTotalLiquidity = IPoolLpToken(susdt).totalLiquidity();
        uint256 susdtTotalSupply = IPoolLpToken(susdt).totalSupply();
        require(
            susdtTotalLiquidity > 0 && susdtTotalSupply > 0,
            "can t convert (S*USDt) to USDt when (S*USDt).totalLiquidity == 0 || totalSupply == 0"
        );
        uint256 lizardUsdtTotalSupply = IERC20(lizardUsdt).totalSupply();

        (uint256 balanceSusdtChef, ) = IMasterChef(chefStg).userInfo(
            chefPoolId,
            address(this)
        );

        uint256 balanceSusdtInUsdt = ((balanceSusdtChef +
            IERC20(susdt).balanceOf(address(this))) * susdtTotalLiquidity) /
            susdtTotalSupply;

        return (
            balanceSusdtInUsdt + IERC20(usdt).balanceOf(address(this)),
            lizardUsdtTotalSupply
        );
    }

    function deposit(uint256 _amountUsdt) public nonReentrant {
        require(
            tx.origin == msg.sender || whitelist[msg.sender],
            "only no smart contract or whitelist"
        );
        require(
            IERC20Burnable(lizardUsdt).totalSupply() + _amountUsdt <
                maximumMint,
            "maximum lizardUsdt minted"
        );

        uint256 oldBalUsdt = IERC20(usdt).balanceOf(address(this));
        IERC20(usdt).transferFrom(msg.sender, address(this), _amountUsdt);
        uint256 balUsdt = IERC20(usdt).balanceOf(address(this));

        require(
            balUsdt >= _amountUsdt + oldBalUsdt,
            "transfer usdt from sender failed"
        );

        IERC20Burnable(lizardUsdt).mint(
            msg.sender,
            applyFees(_amountUsdt, mintFeesNumerator, mintFeesDenominator)
        );

        if (!isExit) //we stack the usdt
        {
            // convert all usdt we have to susdt
            IStargateRouter(stgRouter).addLiquidity(
                susdtPoolId,
                balUsdt,
                address(this)
            );

            IMasterChef(chefStg).deposit(
                chefPoolId,
                IERC20(susdt).balanceOf(address(this))
            ); //deposit all we have
        }
        emit Deposit(_amountUsdt);
    }

    function withdraw(uint256 _amountUsdt) public nonReentrant {
        require(
            tx.origin == msg.sender || whitelist[msg.sender],
            "only no smart contract or whitelist"
        );
        require(_amountUsdt > 0, "amount must be greater than 0");

        uint256 susdtTotalLiquidity = IPoolLpToken(susdt).totalLiquidity();
        uint256 susdtTotalSupply = IPoolLpToken(susdt).totalSupply();
        require(
            susdtTotalLiquidity > 0 && susdtTotalSupply > 0,
            "can t convert (S*USDT) to USDT when (S*USDT).totalLiquidity == 0 || totalSupply == 0"
        );

        uint256 lizardUsdtTotalSupply = IERC20(lizardUsdt).totalSupply();

        IERC20Burnable(lizardUsdt).burn(msg.sender, _amountUsdt); //burn after read totalSupply

        (uint256 balanceSusdtChef, ) = IMasterChef(chefStg).userInfo(
            chefPoolId,
            address(this)
        );
        uint256 balanceSusdt = IERC20(susdt).balanceOf(address(this));
        uint256 balanceUsdt = IERC20(usdt).balanceOf(address(this));

        uint256 balanceSusdtInUsdt = ((balanceSusdt + balanceSusdtChef) *
            susdtTotalLiquidity) / susdtTotalSupply;

        uint256 finalAmountUsdt = applyFees(
            _amountUsdt,
            redeemFeesNumerator,
            redeemFeesDenominator
        );

        if (
            balanceSusdtInUsdt + balanceUsdt < lizardUsdtTotalSupply
        ) //not enough  to redeem with 1/1 ratio
        {
            finalAmountUsdt =
                (finalAmountUsdt * (balanceSusdtInUsdt + balanceUsdt)) /
                lizardUsdtTotalSupply;
        }

        if (finalAmountUsdt > balanceUsdt) {
            uint256 amountSusdtToRedeem = ((finalAmountUsdt - balanceUsdt) *
                susdtTotalSupply) / susdtTotalLiquidity;

            if (amountSusdtToRedeem > balanceSusdt) {
                IMasterChef(chefStg).withdraw(
                    chefPoolId,
                    Math.min(
                        amountSusdtToRedeem - balanceSusdt,
                        balanceSusdtChef
                    )
                );
            }

            IStargateRouter(stgRouter).instantRedeemLocal( //keep usdt on the contract than susdt so we redeem all
                susdtPoolId,
                IERC20(susdt).balanceOf(address(this)),
                address(this)
            );
        }

        IERC20(usdt).transfer(
            msg.sender,
            Math.min(finalAmountUsdt, IERC20(usdt).balanceOf(address(this)))
        );

        emit Withdraw(_amountUsdt);
    }

    // INTERNAL
    function _giveAllowances() internal {
        IERC20(usdt).approve(stgRouter, type(uint256).max);
        IERC20(susdt).approve(chefStg, type(uint256).max);
    }
}
