// Third Party
import React from "react";

// Types
export type ButtonVariant = "primary" | "danger";

export interface ButtonProps extends React.HTMLAttributes<HTMLButtonElement> {
  children: React.ReactNode;
  variant: ButtonVariant;
  shape?: "rounded"
}

// Button Component
export const Button: React.FC<ButtonProps> = ({
  children,
  variant,
  shape,
  ...props
}) => {
  const classNames = `btn btn-${variant} btn-${shape}`
  return (
    <button className={classNames} {...props}>
      {children}
    </button>
  )
}