pragma solidity >=0.8.5;

interface IFeeCounter
{
    struct Fees {
        uint256 volumeFee;
        uint256 poolFee;
        uint256 baseFee;
    }

    function calculateInputFee(
        uint256 id,
        uint256 liability,
        uint256 cashBefore,
        uint256 cashAfter
    ) external view returns (Fees memory fees);

    function calculateOutputFee(
        uint256 id,
        uint256 liability,
        uint256 cashBefore,
        uint256 cashAfter
    ) external view returns (Fees memory fees);
}
