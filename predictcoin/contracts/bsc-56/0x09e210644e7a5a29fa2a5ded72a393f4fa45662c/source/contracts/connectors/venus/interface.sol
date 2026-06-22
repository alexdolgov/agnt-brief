pragma solidity ^0.7.0;

interface VTokenInterface {
    function mint(uint256 mintAmount) external returns (uint256);

    function redeem(uint256 redeemTokens) external returns (uint256);

    function redeemUnderlying(uint256 redeemAmount) external returns (uint256);

    function borrow(uint256 borrowAmount) external returns (uint256);

    function repayBorrow(uint256 repayAmount) external returns (uint256);

    function repayBorrowBehalf(address borrower, uint256 repayAmount)
        external
        returns (uint256);

    function liquidateBorrow(
        address borrower,
        uint256 repayAmount,
        VTokenInterface vTokenCollateral
    ) external returns (uint256);

    function borrowBalanceCurrent(address account) external returns (uint256);

    function exchangeRateCurrent() external returns (uint256);

    function balanceOf(address owner) external view returns (uint256 balance);
}

interface VETHInterface {
    function mint() external payable;

    function repayBorrow() external payable;

    function repayBorrowBehalf(address borrower) external payable;

    function liquidateBorrow(address borrower, address vTokenCollateral)
        external
        payable;
}

interface UniTrollerInterface {
    function enterMarkets(address[] calldata vTokens)
        external
        returns (uint256[] memory);

    function exitMarket(address vTokenAddress) external returns (uint256);

    function getAccountLiquidity(address account)
        external
        view
        returns (
            uint256,
            uint256,
            uint256
        );

    function getAssetsIn(address account)
        external
        view
        returns (address[] memory);
}

interface VenusMappingInterface {
    function vTokenMapping(string calldata tokenId)
        external
        view
        returns (address);

    function getMapping(string calldata tokenId)
        external
        view
        returns (address, address);
}
