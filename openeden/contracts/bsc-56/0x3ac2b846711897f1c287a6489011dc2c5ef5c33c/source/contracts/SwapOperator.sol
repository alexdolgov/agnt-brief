// SPDX-License-Identifier: MIT
pragma solidity =0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./lib/TransferHelper.sol";
import "./interface/IAuthCenter.sol";
import "./interface/IFundsProvider.sol";
import "./interface/IOpManager.sol";
import "./FundsBasic.sol";

// import "hardhat/console.sol";

contract SwapOperator is Ownable, FundsBasic {
    using TransferHelper for address;

    event SwapWithdraw(
        string id,
        string uniqueId,
        address srcToken,
        address dstToken,
        uint256 srcAmount,
        uint256 dstAmount
    );
    event Fee(string uniqueId, address feeTo, address token, uint256 amount);

    event UpdateOneInchRouter(address pre, address oneInchRouter);
    event SetOpManager(address preOpManager, address opManager);
    event SetAuthCenter(address preAuthCenter, address authCenter);
    event SetFundsProvider(address preFundsProvider, address fundsProvider);
    event SetFeeTo(address preFeeTo, address feeTo);

    event Swap(
        string id,
        string uniqueId,
        address caller, // EOA
        uint8 action,
        address srcToken,
        address dstToken,
        address from, // asset from
        address to, // asset final to
        // address swapFeeTo,
        uint256 swapFeeAmt,
        // address gasFeeTo,
        uint256 gasFeeAmt,
        uint256 srcAmtSwap,
        uint256 retAmt
    );

    address public opManager;
    address public accountManager;
    address public authCenter;
    address public fundsProvider;
    address payable public swapFeeTo;
    address payable public gasFeeTo;
    address public oneInchRouter;
    // address oneInchRouter = 0x1111111254fb6c44bAC0beD2854e76F90643097d;

    bool flag;

    enum AssetFrom {
        FUNDSPROVIDER,
        ACCOUNT
    }

    enum Action {
        SWAP,
        PRECROSS
    }

    modifier onlyRunning() {
        bool running = IOpManager(opManager).isRunning(address(this));
        require(running, "ByfiWeb3Swap: op paused!");
        _;
    }

    bytes4 constant general_selector = 0x7c025200;

    function init(
        // address _opManager,
        // address _authCenter,
        // address _fundsProvider,
        address _oneInchRouter,
        address payable _swapFeeTo,
        address payable _gasFeeTo
    ) external {
        require(!flag, "ByfiWeb3Swap: already initialized!");
        // super.initialize(); // Ownable
        // opManager = _opManager;
        // authCenter = _authCenter;
        // fundsProvider = _fundsProvider;
        oneInchRouter = _oneInchRouter;
        swapFeeTo = _swapFeeTo;
        gasFeeTo = _gasFeeTo;
        flag = true;
    }

    function doSwap(
        string memory _id,
        string memory _uniqueId,
        address _payer,
        uint8 _action,
        uint256 _swapFeeAmt,
        uint256 _gasFeeAmt,
        bytes calldata _data
    ) external payable returns (uint256 retAmt) {
        // ) external onlyRunning returns (uint256 retAmt) { //TODO
        require(_action <= 1, "ByfiWeb3Swap: _assetFrom or _action invalid!");

        retAmt = _swapInternal(
            _id,
            _uniqueId,
            _payer,
            _action,
            _swapFeeAmt,
            _gasFeeAmt,
            _data
        );
    }

    struct LocalVars {
        uint256 value;
        bool success;
        bytes retData;
    }

    // 1inch Data Struct
    struct SwapDescription {
        IERC20 srcToken;
        IERC20 dstToken;
        address payable srcReceiver; // don't use
        address payable dstReceiver;
        uint256 amount;
        uint256 minReturnAmount;
        uint256 flags;
        bytes permit;
    }

    function _swapInternal(
        string memory _id,
        string memory _uniqueId,
        address _payer,
        uint8 _action,
        uint256 _swapFeeAmt,
        uint256 _gasFeeAmt,
        bytes calldata _data
    ) internal returns (uint256 retAmt) {
        LocalVars memory vars;

        require(_data.length > 4, "ByfiWeb3Swap: invalid data");
        require(
            bytes4(_data[0:4]) == general_selector,
            "ByfiWeb3Swap: invalid selector"
        );

        /********************* DECODE DATA ***********************
         * selector: 0x7c025200
         * aggregator_selector = bytes4(keccak256(bytes("swap(address,(address,address,address,address,uint256,uint256,uint256,bytes),bytes)")));
         * function swap(
         *    IAggregationExecutor caller,
         *    SwapDescription calldata desc,
         *    bytes calldata data) external payable
         *
         *   returns (
         *      uint256 returnAmount,
         *      uint256 spentAmount,
         *      uint256 gasLeft
         *   )
         ********************************************* ***********/

        SwapDescription memory desc;

        (, desc, ) = abi.decode(_data[4:], (address, SwapDescription, bytes));

        /*
        console.log("srcToken:", address(desc.srcToken));
        console.log("dstToken:", address(desc.dstToken));
        console.log("srcReceiver:", desc.srcReceiver);
        console.log("dstReceiver:", desc.dstReceiver);
        console.log("amount:", desc.amount);
        console.log("minReturnAmount:", desc.minReturnAmount);
        */

        /******************* from: payer, to: dstReceiver ***********/
        // get src tokens from payer to OPERATOR
        if (_payer == fundsProvider) {
            // From FundsProvider
            // TODO need withilist for caller

            IFundsProvider(_payer).pull(
                address(desc.srcToken),
                desc.amount,
                address(this)
            );

            // transfer fee to 'gasFeeTo'
            if (_gasFeeAmt > 0) {
                IFundsProvider(_payer).pull(
                    address(desc.srcToken),
                    _gasFeeAmt,
                    gasFeeTo
                );
            }
        } else {
            // From EOA ETH_ADDRESS
            if (address(desc.srcToken) == ETH_ADDRESS) {
                require(
                    msg.value == desc.amount + _swapFeeAmt,
                    "ByfiWeb3Swap: msg.value should eaqul to amount set in api"
                );

                // transfer fee to 'swapFeeTo'
                address(swapFeeTo).safeTransferETH(_swapFeeAmt);

                // approve To 1inch
                vars.value = desc.amount;
            } else {
                //  From EOA ERC20 Token
                require(
                    msg.value == 0,
                    "ByfiWeb3Swap: wrong msg.value, should be 0"
                );

                // eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee , maybe lowercase //TODO
                address(desc.srcToken).safeTransferFrom(
                    _payer,
                    address(this),
                    desc.amount
                );

                // transfer fee to 'swapFeeTo'
                address(desc.srcToken).safeTransferFrom(
                    _payer,
                    swapFeeTo,
                    _swapFeeAmt
                );

                // approve to 1inch for erc20
                address(desc.srcToken).safeApprove(oneInchRouter, desc.amount);
            }
        }

        // call swap
        (vars.success, vars.retData) = oneInchRouter.call{value: vars.value}(
            _data
        );
        if (!vars.success) revert("ByfiWeb3Swap: 1Inch swap failed");

        // decode return data
        // uint256 spentAmt;
        // (retAmt,,) = abi.decode(vars.retData, (uint256, uint256, uint256)); //TODO
        // console.log("returnAmount:", retAmt);
        // console.log("spentAmt:", spentAmt); //TODO

        // require(retAmt > 0, "ByfiWeb3Swap: swap retAmt should not be 0!");

        emit Swap(
            _id,
            _uniqueId,
            msg.sender,
            _action,
            address(desc.srcToken),
            address(desc.dstToken),
            _payer,
            desc.dstReceiver,
            // swapFeeTo,
            _swapFeeAmt,
            // gasFeeTo,
            _gasFeeAmt,
            desc.amount,
            retAmt
        );
    }

    // function makeData(
    //     address _payer,
    //     uint8 _action,
    //     address _srcToken,
    //     address _dstToken
    // ) internal returns (address from, address to) {
    //     if (
    //         uint8(AssetFrom.FUNDSPROVIDER) == _assetFrom &&
    //         uint8(Action.SWAP) == _action
    //     ) {
    //         // by offchain account, usdt provided by funds provider, swap
    //         require(
    //             IFundsProvider(fundsProvider).isSupported(_srcToken),
    //             "ByfiWeb3Swap: src token not supported by funds provider!"
    //         );
    //         from = fundsProvider;
    //         to = account;
    //     } else if (
    //         uint8(AssetFrom.ACCOUNT) == _assetFrom &&
    //         uint8(Action.SWAP) == _action
    //     ) {
    //         // by onchain account, token provided by sub constract, swap
    //         from = account;
    //         to = account;
    //     } else if (
    //         uint8(AssetFrom.ACCOUNT) == _assetFrom &&
    //         uint8(Action.PRECROSS) == _action
    //     ) {
    //         // by onchain account, token provided by sub contract, cross chain
    //         require(
    //             IFundsProvider(fundsProvider).isSupported(_dstToken),
    //             "ByfiWeb3Swap: dst token not supported by funds provider!"
    //         );
    //         from = account;
    //         to = fundsProvider;
    //     } else {
    //         revert("ByfiWeb3Swap: invalid asset from and action combination!");
    //     }
    // }

    function updateOneInchRouter(address _router) external onlyOwner {
        address pre = oneInchRouter;
        oneInchRouter = _router;

        emit UpdateOneInchRouter(pre, oneInchRouter);
    }

    function setOpManager(address _opManager) external onlyOwner {
        address pre = opManager;
        opManager = _opManager;
        emit SetOpManager(pre, _opManager);
    }

    function setAuthCenter(address _authCenter) external onlyOwner {
        address pre = authCenter;
        authCenter = _authCenter;
        emit SetAuthCenter(pre, _authCenter);
    }

    function setFundsProvider(address _fundsProvider) external onlyOwner {
        address pre = fundsProvider;
        fundsProvider = _fundsProvider;
        emit SetFundsProvider(pre, _fundsProvider);
    }

    // function setFeeTo(address _feeTo) external onlyOwner {
    //     address pre = feeTo;
    //     feeTo = _feeTo;
    //     emit SetFeeTo(pre, _feeTo);
    // }

    function push(address _token, uint256 _amt)
        external
        payable
        override
        returns (uint256 amt)
    {
        _token;
        _amt;
        amt;
        revert();
    }

    function pull(
        address _token,
        uint256 _amt,
        address _to
    ) external override returns (uint256 amt) {
        IAuthCenter(authCenter).ensureOperatorPullAccess(_msgSender());
        amt = _pull(_token, _amt, _to);
    }

    function _getTokenBal(IERC20 token) internal view returns (uint256 _amt) {
        _amt = address(token) == ETH_ADDRESS
            ? address(this).balance
            : token.balanceOf(address(this));
    }
}
