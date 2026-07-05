// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface IPancakeStableSwapFactory {
    function stableSwapPairInfo(
        address,
        address,
        address
    )
        external
        view
        returns (
            address swapContract,
            address token0,
            address token1,
            address LPContract
        );

    /**
     * @notice createSwapPair
     * @param _tokenA: Addresses of ERC20 conracts .
     * @param _tokenB: Addresses of ERC20 conracts .
     * @param _A: Amplification coefficient multiplied by n * (n - 1)
     * @param _fee: Fee to charge for exchanges
     * @param _admin_fee: Admin fee
     */
    function createSwapPair(
        address _tokenA,
        address _tokenB,
        uint256 _A,
        uint256 _fee,
        uint256 _admin_fee
    ) external;

    /**
     * @notice createThreePoolPair
     * @param _tokenA: Addresses of ERC20 conracts .
     * @param _tokenB: Addresses of ERC20 conracts .
     * @param _tokenC: Addresses of ERC20 conracts .
     * @param _A: Amplification coefficient multiplied by n * (n - 1)
     * @param _fee: Fee to charge for exchanges
     * @param _admin_fee: Admin fee
     */
    function createThreePoolPair(
        address _tokenA,
        address _tokenB,
        address _tokenC,
        uint256 _A,
        uint256 _fee,
        uint256 _admin_fee
    ) external;

    function addPairInfo(address _swapContract) external;

    function transferOwnership(address _newOwner) external;

    function getPairInfo(address _tokenA, address _tokenB)
        external
        view
        returns (
            address,
            address,
            address,
            address
        );
}
