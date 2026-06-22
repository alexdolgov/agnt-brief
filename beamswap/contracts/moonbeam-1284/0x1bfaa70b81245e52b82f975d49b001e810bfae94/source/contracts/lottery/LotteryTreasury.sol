// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../uniswapv2/interfaces/IWGLMR.sol";
import "./interfaces/IBeamswapRouter.sol";
import "../interfaces/IStaking.sol";

contract LotteryTreasury is Ownable {
    using SafeERC20 for IERC20;

    IBeamswapRouter public immutable router;
    IWGLMR internal immutable wglmr;
    address public tokenTo; //GLINT
    IStaking internal immutable stGlintStaking;

    address internal constant BURN_ADDRESS =
        0x000000000000000000000000000000000000dEaD;

    uint256 public burnPercent = 20;
    uint256 public stGlintPercent = 60;
    uint256 public treasuryPercent = 20;

    // set of addresses that can perform certain functions
    mapping(address => bool) public isAuth;
    address[] public authorized;
    bool public anyAuth = false;

    modifier onlyAuth() {
        require(isAuth[msg.sender] || anyAuth, "LotteryTreasury: FORBIDDEN");
        _;
    }

    constructor(
        address _wglmr,
        address _tokenTo,
        address _router,
        address _stGlintStaking
    ) {
        wglmr = IWGLMR(_wglmr);
        tokenTo = _tokenTo;
        router = IBeamswapRouter(_router);
        stGlintStaking = IStaking(_stGlintStaking);
        isAuth[msg.sender] = true;
        authorized.push(msg.sender);
        IERC20(_wglmr).approve(_stGlintStaking, type(uint256).max);
    }

    receive() external payable {}

    // Begin Owner functions
    function addAuth(address _auth) external onlyOwner {
        isAuth[_auth] = true;
        authorized.push(_auth);
    }

    function revokeAuth(address _auth) external onlyOwner {
        isAuth[_auth] = false;
    }

    // setting anyAuth to true allows anyone to call functions protected by onlyAuth
    function setAnyAuth(bool access) external onlyOwner {
        anyAuth = access;
    }

    function setTokenToAddress(address _tokenTo) external onlyOwner {
        require(
            _tokenTo != address(0),
            "setTokenToAddress, address cannot be zero address"
        );
        tokenTo = _tokenTo;
    }

    function setPercentages(
        uint256 _burnPercent,
        uint256 _stGlintPercent,
        uint256 _treasuryPercent
    ) external onlyOwner {
        require(
            _burnPercent + _stGlintPercent + _treasuryPercent == 100,
            "percentages must add up to 100"
        );
        burnPercent = _burnPercent;
        stGlintPercent = _stGlintPercent;
        treasuryPercent = _treasuryPercent;
    }

    function convert() external onlyAuth {
        uint256 glmrBalance = address(this).balance;

        uint256 stGlintAmount = (glmrBalance * stGlintPercent) / 100;
        uint256 treasuryAmount = (glmrBalance * treasuryPercent) / 100;
        uint256 burnAmount = (glmrBalance * burnPercent) / 100;

        wglmr.deposit{value: stGlintAmount}();
        stGlintStaking.addRewardsToPending(address(wglmr), stGlintAmount);

        (bool sent, ) = owner().call{value: treasuryAmount}("");

        uint256 amountOut = 0;
        address[] memory path = new address[](2);
        path[0] = address(wglmr);
        path[1] = tokenTo;

        uint256 deadline = block.timestamp + 30 minutes;

        router.swapExactETHForTokens(amountOut, path, BURN_ADDRESS, deadline);
    }

    function withdrawLP(address lp) public onlyOwner {
        IERC20 token = IERC20(address(lp));
        token.safeTransfer(owner(), token.balanceOf(address(this)));
    }

    function withdrawGlmr() public onlyOwner {
        uint256 glmrBalance = address(this).balance;
        (bool sent, ) = msg.sender.call{value: glmrBalance}("");
    }
}
