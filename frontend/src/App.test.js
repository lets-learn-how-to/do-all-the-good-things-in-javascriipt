import React from 'react';
import {render} from '@testing-library/react';
import App from './App';

describe('App component', () => {
  it('renders header', () => {
    const {getByText} = render(<App/>);
    const headerElement = getByText(/redhoot/i);

    expect(headerElement).toBeInTheDocument();
  });
});
